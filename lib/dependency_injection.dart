import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import 'package:power_progress/application/exercise/exercise_bloc.dart';
import 'package:power_progress/application/onboarding/onboarding_bloc.dart';
import 'package:power_progress/application/workout/workout_bloc.dart';
import 'package:power_progress/domain/exercise/repositories/i_exercise_repository.dart';
import 'package:power_progress/domain/exercise/usecases/add_exercise.dart';
import 'package:power_progress/domain/exercise/usecases/fetch_exercises.dart';
import 'package:power_progress/domain/exercise/usecases/remove_exercises.dart';
import 'package:power_progress/domain/exercise/usecases/update_exercise_next_month.dart';
import 'package:power_progress/domain/exercise/usecases/update_exercise_next_week.dart';
import 'package:power_progress/domain/onboarding/repositories/i_onboarding_repository.dart';
import 'package:power_progress/domain/onboarding/usecases/done_onboarding.dart';
import 'package:power_progress/domain/onboarding/usecases/is_done_onboarding.dart';
import 'package:power_progress/domain/workout/repositories/i_workout_repository.dart';
import 'package:power_progress/domain/workout/usecases/generate_workout.dart';
import 'package:power_progress/domain/workout/usecases/mark_workout_done.dart';
import 'package:power_progress/domain/workout/usecases/mark_workout_undone.dart';
import 'package:power_progress/domain/workout/usecases/remove_workout_done.dart';
import 'package:power_progress/infrastructure/exercise/datasources/hive_exercise_datasource.dart';
import 'package:power_progress/infrastructure/exercise/datasources/i_exercise_datasource.dart';
import 'package:power_progress/infrastructure/exercise/models/exercise_model.dart';
import 'package:power_progress/infrastructure/exercise/repositories/exercise_repository.dart';
import 'package:power_progress/infrastructure/onboarding/datasources/hive_onboarding_datasource.dart';
import 'package:power_progress/infrastructure/onboarding/datasources/i_onboarding_datasource.dart';
import 'package:power_progress/infrastructure/onboarding/repositories/onboarding_repository.dart';
import 'package:power_progress/infrastructure/workout/datasources/hive_workout_datasource.dart';
import 'package:power_progress/infrastructure/workout/datasources/i_workout_datasource.dart';
import 'package:power_progress/infrastructure/workout/models/workout_done_model.dart';
import 'package:power_progress/infrastructure/workout/repositories/workout_repository.dart';

final GetIt sl = GetIt.instance;

/// Initialize the depdendency injection
Future<void> init() async {
  //! FEATURES
  initWorkoutFeature();
  initExerciseFeature();
  initOnboardingFeature();

  //! CORE

  //! EXTERNAL
  Hive.registerAdapter(ExerciseModelAdapter());
  Hive.registerAdapter(WorkoutDoneModelAdapter());
  final exercisesBox = await Hive.openBox<ExerciseModel>('exercises');
  sl.registerLazySingleton<Box<ExerciseModel>>(() => exercisesBox);
  final onboardingBox = await Hive.openBox<bool>('onboarding');
  sl.registerLazySingleton<Box<bool>>(() => onboardingBox);
  final workoutDoneBox = await Hive.openBox<WorkoutDoneModel>('workoutDone');
  sl.registerLazySingleton<Box<WorkoutDoneModel>>(() => workoutDoneBox);
}

/// Register the dependencies needed for the exercise feature
void initExerciseFeature() {
  // Bloc
  sl.registerFactory(
    () => ExerciseBloc(
      addExercise: sl<AddExercise>(),
      fetchExercises: sl<FetchExercises>(),
      removeExercises: sl<RemoveExercises>(),
    ),
  );

  // Usecases
  sl.registerLazySingleton(() => AddExercise(exerciseRepository: sl<IExerciseRepository>()));
  sl.registerLazySingleton(() => FetchExercises(exerciseRepository: sl<IExerciseRepository>()));
  sl.registerLazySingleton(() => RemoveExercises(
      exerciseRepository: sl<IExerciseRepository>(), removeWorkoutDone: sl<RemoveWorkoutDone>()));
  sl.registerLazySingleton(
      () => UpdateExerciseNextWeek(exerciseRepository: sl<IExerciseRepository>()));
  sl.registerLazySingleton(
      () => UpdateExerciseNextMonth(exerciseRepository: sl<IExerciseRepository>()));

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
  sl.registerFactory(
    () => OnboardingBloc(
      doneOnboarding: sl<DoneOnboarding>(),
      isDoneOnboarding: sl<IsDoneOnboarding>(),
    ),
  );

  // Usecases
  sl.registerLazySingleton(() => DoneOnboarding(onboardingRepository: sl<IOnboardingRepository>()));
  sl.registerLazySingleton(
      () => IsDoneOnboarding(onboardingRepository: sl<IOnboardingRepository>()));

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
      generateWorkout: sl<GenerateWorkout>(),
      markWorkoutDone: sl<MarkWorkoutDone>(),
      markWorkoutUndone: sl<MarkWorkoutUndone>(),
    ),
  );

  // Usecases
  sl.registerLazySingleton(() => GenerateWorkout(repository: sl<IWorkoutRepository>()));
  sl.registerLazySingleton(() => MarkWorkoutDone(
        repository: sl<IWorkoutRepository>(),
        updateExerciseNextWeek: sl<UpdateExerciseNextWeek>(),
        updateExerciseNextMonth: sl<UpdateExerciseNextMonth>(),
      ));
  sl.registerLazySingleton(() => RemoveWorkoutDone(repository: sl<IWorkoutRepository>()));
  sl.registerLazySingleton(() => MarkWorkoutUndone(
        repository: sl<IWorkoutRepository>(),
        updateExerciseNextWeek: sl<UpdateExerciseNextWeek>(),
        updateExerciseNextMonth: sl<UpdateExerciseNextMonth>(),
      ));

  // Repositories
  sl.registerLazySingleton<IWorkoutRepository>(
      () => WorkoutRepository(datasource: sl<IWorkoutDatasource>()));

  // Datasource
  sl.registerLazySingleton<IWorkoutDatasource>(
    () => HiveWorkoutDatasource(localStorage: sl<Box<WorkoutDoneModel>>()),
  );
}
