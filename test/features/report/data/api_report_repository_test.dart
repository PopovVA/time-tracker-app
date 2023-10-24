import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracker/core/exceptions/api_exception.dart';
import 'package:time_tracker/core/exceptions/parsing_exception.dart';
import 'package:time_tracker/features/report/data/api_report_repository.dart';
@GenerateNiceMocks([MockSpec<RestApiRepositoryImpl>()])
import 'package:time_tracker/core/api/api_repository.dart';

import 'api_report_repository_test.mocks.dart';

void main() {
  late final ApiReportRepositoryImpl apiReportRepositoryImpl;
  late final MockRestApiRepositoryImpl mockRestApiRepositoryImpl;
  late final Map<String, dynamic> fakeReport;

  setUpAll(() {
    mockRestApiRepositoryImpl = MockRestApiRepositoryImpl();
    apiReportRepositoryImpl =
        ApiReportRepositoryImpl(mockRestApiRepositoryImpl);
    fakeReport = <String, dynamic>{
      'title': 'work',
      'timeframes': {
        'daily': {
          'current': 10,
          'previous': 0,
        },
        'weekly': {
          'current': 10,
          'previous': 0,
        },
        'monthly': {
          'current': 10,
          'previous': 0,
        },
      }
    };
  });
  group('Get report from api repository', () {
    test('Should throw ApiException if response code not equals 200', () async {
      when(mockRestApiRepositoryImpl.get(path: '/time-tracking')).thenAnswer(
        (_) => Future.value(Response(
          requestOptions: RequestOptions(path: ''),
          statusCode: 500,
        )),
      );
      try {
        await apiReportRepositoryImpl.getReports();
      } catch (error) {
        expect(error.runtimeType, ApiException);
      }
    });

    test('Should throw ParsingException if response body is not a List type',
        () async {
      when(mockRestApiRepositoryImpl.get(path: '/time-tracking')).thenAnswer(
        (_) => Future.value(Response(
          requestOptions: RequestOptions(path: ''),
          statusCode: 200,
          data: {},
        )),
      );
      try {
        await apiReportRepositoryImpl.getReports();
      } catch (error) {
        expect(error.runtimeType, ParsingException);
      }
    });

    test(
        'Should return List<Report> if response code is 200 and response type is List',
        () async {
      when(mockRestApiRepositoryImpl.get(path: '/time-tracking')).thenAnswer(
        (_) => Future.value(Response(
          requestOptions: RequestOptions(path: ''),
          statusCode: 200,
          data: <dynamic>[fakeReport],
        )),
      );
      final res = await apiReportRepositoryImpl.getReports();
      expect(res?.length, 1);
    });
  });
}
