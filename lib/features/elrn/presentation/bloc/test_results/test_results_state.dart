
import 'package:elrn/features/elrn/domain/entities/test_result/test_result_entity.dart';


sealed class TestResultsState{}

class TestResultsLoadedState extends TestResultsState{
  final List<TestResultEntity> programs;

  TestResultsLoadedState(this.programs);
}

class TestResultsErrorState extends TestResultsState{
  final String message;

  TestResultsErrorState(this.message);
}

class TestResultsLoadingState extends TestResultsState{}