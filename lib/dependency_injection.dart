import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:power_progress/application/exercise/add/exercise_add_cubit.dart';

import 'package:power_progress/application/exercise/exercise_cubit.dart';
import 'package:power_progress/application/exercise/month/month_cubit.dart';
import 'package:power_progress/application/exercise/selection/selection_cubit.dart';
import 'package:power_progress/application/exercise/week/week_cubit.dart';
import 'package:power_progress/application/onboarding/onboarding_cubit.dart';
import 'package:power_progress/application/one_rm/one_rm_cubit.dart';
import 'package:power_progress/application/settings/settings_cubit.dart';
import 'package:power_progress/application/workout/handlers/generate_handler.dart';
import 'package:power_progress/application/workout/handlers/mark_done_handler.dart';
import 'package:power_progress/application/workout/handlers/mark_undone_handler.dart';
import 'package:power_progress/application/workout/handlers/remove_handler.dart';
import 'package:power_progress/application/workout/workout_cubit.dart';
import 'package:power_progress/domain/exercise/i_exercise_repository.dart';
import 'package:power_progress/domain/onboarding/i_onboarding_repository.dart';
import 'package:power_progress/domain/one_rm/i_one_rm_repository.dart';
import 'package:power_progress/domain/settings/i_settings_repository.dart';
import 'package:power_progress/domain/workout/i_workout_repository.dart';
import 'package:power_progress/infrastructure/exercise/datasources/hive_exercise_datasource.dart';
import 'package:power_progress/infrastructure/exercise/datasources/i_exercise_datasource.dart';
import 'package:power_progress/infrastructure/exercise/models/exercise_model.dart';
import 'package:power_progress/infrastructure/exercise/repositories/exercise_repository.dart';
import 'package:power_progress/infrastructure/onboarding/datasources/hive_onboarding_datasource.dart';
import 'package:power_progress/infrastructure/onboarding/datasources/i_onboarding_datasource.dart';
import 'package:power_progress/infrastructure/onboarding/repositories/onboarding_repository.dart';
import 'package:power_progress/infrastructure/one_rm/datasources/i_one_rm_datasource.dart';
import 'package:power_progress/infrastructure/one_rm/repositories/one_rm_repository.dart';
import 'package:power_progress/infrastructure/settings/datasources/hive_settings_datasource.dart';
import 'package:power_progress/infrastructure/settings/datasources/i_settings_datasource.dart';
import 'package:power_progress/infrastructure/settings/models/settings_model.dart';
import 'package:power_progress/infrastructure/settings/repositories/settings_repository.dart';
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
  _initWorkoutFeature();
  _initExerciseFeature();
  _initOnboardingFeature();
  _initOneRmFeature();
  _initSettingsFeature();

  //! CORE

  //! EXTERNAL
  Hive.registerAdapter(ExerciseModelAdapter());
  final exercisesBox = await Hive.openBox<ExerciseModel>('exercises');
  sl.registerLazySingleton<Box<ExerciseModel>>(() => exercisesBox);

  final onboardingBox = await Hive.openBox<bool>('onboarding');
  sl.registerLazySingleton<Box<bool>>(() => onboardingBox);

  Hive.registerAdapter(WorkoutDoneModelAdapter());
  final workoutDoneBox = await Hive.openBox<WorkoutDoneModel>('workoutDone');
  sl.registerLazySingleton<Box<WorkoutDoneModel>>(() => workoutDoneBox);

  Hive.registerAdapter(OneRmModelAdapter());
  final oneRmBox = await Hive.openBox<OneRmModel>('oneRm');
  sl.registerLazySingleton<Box<OneRmModel>>(() => oneRmBox);

  Hive.registerAdapter(SettingsModelAdapter());
  final settingsBox = await Hive.openBox<SettingsModel>('settings');
  sl.registerLazySingleton<Box<SettingsModel>>(() => settingsBox);
}

/// Register the dependencies needed for the exercise feature
void _initExerciseFeature() {
  // Bloc
  sl.registerFactory(
    () => ExerciseCubit(
      exerciseRepository: sl<IExerciseRepository>(),
      oneRmBloc: sl<OneRmCubit>(),
      workoutCubit: sl<WorkoutCubit>(),
    ),
  );
  sl.registerFactory(() => WeekCubit(exerciseRepository: sl<IExerciseRepository>()));
  sl.registerFactory(() => MonthCubit(exerciseRepository: sl<IExerciseRepository>()));
  sl.registerFactory(() => SelectionCubit());
  sl.registerFactory(() => ExerciseAddCubit());

  // Repositories
  sl.registerLazySingleton<IExerciseRepository>(
      () => ExerciseRepository(datasource: sl<IExerciseDatasource>()));

  // Datasource
  sl.registerLazySingleton<IExerciseDatasource>(
    () => HiveExerciseDatasource(localStorage: sl<Box<ExerciseModel>>()),
  );
}

/// Register the dependencies needed for the onboarding feature
void _initOnboardingFeature() {
  // Bloc
  sl.registerFactory(() => OnboardingCubit(onboardingRepository: sl<IOnboardingRepository>()));

  // Repositories
  sl.registerLazySingleton<IOnboardingRepository>(
      () => OnboardingRepository(datasource: sl<IOnboardingDatasource>()));

  // Datasource
  sl.registerLazySingleton<IOnboardingDatasource>(
    () => HiveOnboardingDatasource(localStorage: sl<Box<bool>>()),
  );
}

/// Register the dependencies needed for the onboarding feature
void _initWorkoutFeature() {
  // Handlers
  sl.registerFactory(() => GenerateHandler(
        oneRmRepository: sl<IOneRmRepository>(),
        exerciseRepository: sl<IExerciseRepository>(),
        workoutRepository: sl<IWorkoutRepository>(),
      ));
  sl.registerFactory(() => MarkDoneHandler(
        weekCubit: sl<WeekCubit>(),
        monthCubit: sl<MonthCubit>(),
        oneRmCubit: sl<OneRmCubit>(),
        workoutRepository: sl<IWorkoutRepository>(),
      ));
  sl.registerFactory(() => MarkUndoneHandler(
        weekCubit: sl<WeekCubit>(),
        monthCubit: sl<MonthCubit>(),
        oneRmCubit: sl<OneRmCubit>(),
        workoutRepository: sl<IWorkoutRepository>(),
      ));
  sl.registerFactory(() => RemoveHandler(
        workoutRepository: sl<IWorkoutRepository>(),
      ));

  // Bloc
  sl.registerFactory(
    () => WorkoutCubit(
      generateHandler: sl<GenerateHandler>(),
      markDoneHandler: sl<MarkDoneHandler>(),
      markUndoneHandler: sl<MarkUndoneHandler>(),
      removeHandler: sl<RemoveHandler>(),
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

void _initOneRmFeature() {
  // Bloc
  sl.registerFactory(() => OneRmCubit(oneRmRepository: sl<IOneRmRepository>()));

  // Repositories
  sl.registerLazySingleton<IOneRmRepository>(
      () => OneRmRepository(datasource: sl<IOneRmDatasource>()));

  // Datasource
  sl.registerLazySingleton<IOneRmDatasource>(
      () => HiveOneRmDatasource(localStorage: sl<Box<OneRmModel>>()));
}

void _initSettingsFeature() {
  // Bloc
  sl.registerFactory(() => SettingsCubit(settingsRepository: sl<ISettingsRepository>()));

  // Repositories
  sl.registerLazySingleton<ISettingsRepository>(
      () => SettingsRepository(datasource: sl<ISettingsDatasource>()));

  // Datasource
  sl.registerLazySingleton<ISettingsDatasource>(
    () => HiveSettingsDatasource(
      localStorage: sl<Box<SettingsModel>>(),
    ),
  );
}
