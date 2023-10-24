import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_tracker/core/api/api_repository.dart';
import 'package:time_tracker/core/exceptions/api_exception.dart';
import 'package:time_tracker/core/exceptions/parsing_exception.dart';
import 'package:time_tracker/features/report/data/report_repository.dart';
import 'package:time_tracker/features/report/domain/model/report.dart';

final apiReportRepositoryProvider = Provider<IReportRepository>(
  (ref) => ApiReportRepositoryImpl(ref.watch(restApiRepositoryProvider)),
);

class ApiReportRepositoryImpl implements IReportRepository {
  ApiReportRepositoryImpl(
    this._apiRepository,
  );

  final IApiRepository _apiRepository;

  @override
  Future<List<Report>?> getReports() async {
    try {
      final Response response = await _apiRepository.get(
        path: '/time-tracking',
      );
      if (response.statusCode != 200) {
        throw ApiException('Failed to get report data from the server');
      }
      if (response.data.runtimeType != List) {
        throw const ParsingException('Failed to parse report data');
      }
      final data = response.data as List;
      return data.map((report) => Report.fromJson(report)).toList();
    } on DioError catch (dioError) {
      throw ApiException(dioError.message);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<void> saveReports(List<Report> report) async {
    throw UnimplementedError(
      'There may be a request to update the data on the server',
    );
  }
}
