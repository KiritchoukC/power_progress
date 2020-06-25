import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import 'package:power_progress/application/exercise/exercise_bloc.dart';
import 'package:power_progress/application/exercise/month/month_bloc.dart';
import 'package:power_progress/application/exercise/week/week_bloc.dart';
import 'package:power_progress/application/onboarding/onboarding_bloc.dart';
import 'package:power_progress/application/one_rm/one_rm_bloc.dart';
import 'package:power_progress/application/workout/workout_bloc.dart';
import 'package:power_progress/domain/exercise/i_exercise_repository.dart';
import 'package:power_progress/domain/exercise/usecases/update_exercise_next_month.dart';
import 'package:power_progress/domain/exercise/usecases/update_exercise_next_week.dart';
import 'package:power_progress/domain/onboarding/repositories/i_onboarding_repository.dart';
import 'package:power_progress/domain/onboarding/usecases/done_onboarding.dart';
import 'package:power_progress/domain/onboarding/usecases/is_done_onboarding.dart';
import 'package:power_progress/domain/one_rm/repositories/i_one_rm_repository.dart';
import 'package:power_progress/domain/workout/repositories/i_workout_repository.dart';
import 'package:power_progress/infrastructure/exercise/datasources/hive_exercise_datasource.dart';
import 'package:power_progress/infrastructure/exercise/datasources/i_exercise_datasource.dart';
import 'package:power_progress/infrastructure/exercise/models/exercise_model.dart';
import 'package:power_progress/infrastructure/exercise/repositories/exercise_repository.dart';
import 'package:power_progress/infrastructure/onboarding/datasources/hive_onboarding_datasource.dart';
import 'package:power_progress/infrastructure/onboarding/datasources/i_onboarding_datasource.dart';
import 'package:power_progress/infrastructure/onboarding/repositories/onboarding_repository.dart';
import 'package:power_progress/infrastructure/one_rm/datasources/i_one_rm_datasource.dart';
import 'package:power_progress/infrastructure/one_rm/repositories/one_rm_repository.dart';
import 'package:power_progress/infrastructure/workout/datasources/hive_workout_datasource.dart';
import 'package:power_progress/infrastructure/workout/datasources/i_workout_datasource.dart';
import 'package:power_progress/infrastructure/workout/models/workout_done_model.dart';
import 'package:power_progress/infrastructure/workout/repositories/workout_repository.dart';
import 'package:power_progress/infrastructure/one_rm/datasources/hive_one_rm_datasource.dart';
import 'package:power_progress/infrastructure/one_rm/models/one_rm_model.dart';

final GetIt sl = GetIt.instance;

/// Initialize the depdendency injection
Future<void> init() async {
  //! FEATURES
  initWorkoutFeature();
  initExerciseFeature();
  initOnboardingFeature();
  initOneRmFeature();

  //! CORE

  //! EXTERNAL
  Hive.registerAdapter(ExerciseModelAdapter());
  Hive.registerAdapter(WorkoutDoneModelAdapter());
  Hive.registerAdapter(OneRmModelAdapter());
  final exercisesBox = await Hive.openBox<ExerciseModel>('exercises');
  sl.registerLazySingleton<Box<ExerciseModel>>(() => exercisesBox);
  final onboardingBox = await Hive.openBox<bool>('onboarding');
  sl.registerLazySingleton<Box<bool>>(() => onboardingBox);
  final workoutDoneBox = await Hive.openBox<WorkoutDoneModel>('workoutDone');
  sl.registerLazySingleton<Box<WorkoutDoneModel>>(() => workoutDoneBox);
  final oneRmBox = await Hive.openBox<OneRmModel>('oneRm');
  sl.registerLazySingleton<Box<OneRmModel>>(() => oneRmBox);
}

/// Register the dependencies needed for the exercise feature
void initExerciseFeature() {
  // Bloc
  sl.registerFactory(
    () => ExerciseBloc(
      exerciseRepository: sl<IExerciseRepository>(),
      oneRmBloc: sl<OneRmBloc>(),
      workoutBloc: sl<WorkoutBloc>(),
    ),
  );
  sl.registerFactory(() => WeekBloc(updateExerciseNextWeek: sl<UpdateExerciseNextWeek>()));
  sl.registerFactory(() => MonthBloc(updateExerciseNextMonth: sl<UpdateExerciseNextMonth>()));

  // Repositories
  sl.registerLazySingleton<IExerciseRepository>(
      () => ExerciseRepository(datasource: sl<IExerciseDatasource>()));

  // Datasource
  sl.registerLazySingleton<IExerciseDatasource>(
    () => HiveExerciseDatasource(localStorage: sl<Box<ExerciseModel>>()),
  );
}

/// Register the dependencies needed for the onboarding feature
void initOnboardingFeature() {
  // Bloc
  sl.registerFactory(() => OnboardingBloc(onboardingRepository: sl<IOnboardingRepository>()));

  // Repositories
  sl.registerLazySingleton<IOnboardingRepository>(
      () => OnboardingRepository(datasource: sl<IOnboardingDatasource>()));

  // Datasource
  sl.registerLazySingleton<IOnboardingDatasource>(
    () => HiveOnboardingDatasource(localStorage: sl<Box<bool>>()),
  );
}

/// Register the dependencies needed for the onboarding feature
void initWorkoutFeature() {
  // Bloc
  sl.registerFactory(
    () => WorkoutBloc(
      workoutRepository: sl<IWorkoutRepository>(),
      oneRmRepository: sl<IOneRmRepository>(),
      weekBloc: sl<WeekBloc>(),
      monthBloc: sl<MonthBloc>(),
      oneRmBloc: sl<OneRmBloc>(),
    ),
  );

  // Repositories
  sl.registerLazySingleton<IWorkoutRepository>(
      () => WorkoutRepository(datasource: sl<IWorkoutDatasource>()));

  // Datasource
  sl.registerLazySingleton<IWorkoutDatasource>(
    () => HiveWorkoutDatasource(localStorage: sl<Box<WorkoutDoneModel>>()),
  );
}

void initOneRmFeature() {
  // Bloc
  sl.registerFactory(() => OneRmBloc(oneRmRepository: sl<IOneRmRepository>()));

  // Repositories
  sl.registerLazySingleton<IOneRmRepository>(
      () => OneRmRepository(datasource: sl<IOneRmDatasource>()));

  // Datasource
  sl.registerLazySingleton<IOneRmDatasource>(
      () => HiveOneRmDatasource(localStorage: sl<Box<OneRmModel>>()));
}
