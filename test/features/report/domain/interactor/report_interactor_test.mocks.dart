// Mocks generated by Mockito 5.3.2 from annotations
// in time_tracker/test/features/report/domain/interactor/report_interactor_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:time_tracker/features/report/data/api_report_repository.dart'
    as _i3;
import 'package:time_tracker/features/report/data/storage_report_repository.dart'
    as _i5;
import 'package:time_tracker/features/report/domain/model/report.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeTimeframe_0 extends _i1.SmartFake implements _i2.Timeframe {
  _FakeTimeframe_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _Fake$ReportCopyWith_1<$Res> extends _i1.SmartFake
    implements _i2.$ReportCopyWith<$Res> {
  _Fake$ReportCopyWith_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ApiReportRepositoryImpl].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiReportRepositoryImpl extends _i1.Mock
    implements _i3.ApiReportRepositoryImpl {
  @override
  _i4.Future<List<_i2.Report>?> getReports() => (super.noSuchMethod(
        Invocation.method(
          #getReports,
          [],
        ),
        returnValue: _i4.Future<List<_i2.Report>?>.value(),
        returnValueForMissingStub: _i4.Future<List<_i2.Report>?>.value(),
      ) as _i4.Future<List<_i2.Report>?>);
  @override
  _i4.Future<void> saveReports(List<_i2.Report>? report) => (super.noSuchMethod(
        Invocation.method(
          #saveReports,
          [report],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [StorageReportRepositoryImpl].
///
/// See the documentation for Mockito's code generation for more information.
class MockStorageReportRepositoryImpl extends _i1.Mock
    implements _i5.StorageReportRepositoryImpl {
  @override
  _i4.Future<List<_i2.Report>?> getReports() => (super.noSuchMethod(
        Invocation.method(
          #getReports,
          [],
        ),
        returnValue: _i4.Future<List<_i2.Report>?>.value(),
        returnValueForMissingStub: _i4.Future<List<_i2.Report>?>.value(),
      ) as _i4.Future<List<_i2.Report>?>);
  @override
  _i4.Future<void> saveReports(List<_i2.Report>? report) => (super.noSuchMethod(
        Invocation.method(
          #saveReports,
          [report],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [Report].
///
/// See the documentation for Mockito's code generation for more information.
class MockReport extends _i1.Mock implements _i2.Report {
  @override
  String get title => (super.noSuchMethod(
        Invocation.getter(#title),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i2.Timeframe get timeframes => (super.noSuchMethod(
        Invocation.getter(#timeframes),
        returnValue: _FakeTimeframe_0(
          this,
          Invocation.getter(#timeframes),
        ),
        returnValueForMissingStub: _FakeTimeframe_0(
          this,
          Invocation.getter(#timeframes),
        ),
      ) as _i2.Timeframe);
  @override
  _i2.$ReportCopyWith<_i2.Report> get copyWith => (super.noSuchMethod(
        Invocation.getter(#copyWith),
        returnValue: _Fake$ReportCopyWith_1<_i2.Report>(
          this,
          Invocation.getter(#copyWith),
        ),
        returnValueForMissingStub: _Fake$ReportCopyWith_1<_i2.Report>(
          this,
          Invocation.getter(#copyWith),
        ),
      ) as _i2.$ReportCopyWith<_i2.Report>);
  @override
  Map<String, dynamic> toJson() => (super.noSuchMethod(
        Invocation.method(
          #toJson,
          [],
        ),
        returnValue: <String, dynamic>{},
        returnValueForMissingStub: <String, dynamic>{},
      ) as Map<String, dynamic>);
}
