import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import 'application/exercise/exercise_bloc.dart';
import 'domain/exercise/repositories/i_exercise_repository.dart';
import 'domain/exercise/repositories/i_onboarding_repository.dart';
import 'domain/exercise/usecases/add_exercise.dart';
import 'domain/exercise/usecases/done_onboarding.dart';
import 'domain/exercise/usecases/get_exercises.dart';
import 'domain/exercise/usecases/is_done_onboarding.dart';
import 'domain/exercise/usecases/remove_exercises.dart';
import 'infrastructure/exercise/datasources/hive_exercise_datasource.dart';
import 'infrastructure/exercise/datasources/hive_onboarding_datasource.dart';
import 'infrastructure/exercise/datasources/i_exercise_datasource.dart';
import 'infrastructure/exercise/datasources/i_onboarding_datasource.dart';
import 'infrastructure/exercise/models/exercise_model.dart';
import 'infrastructure/exercise/repositories/exercise_repository.dart';
import 'infrastructure/exercise/repositories/onboarding_repository.dart';

final GetIt sl = GetIt.instance;

/// Initialize de depdendency injection
Future<void> init() async {
  //! FEATURES
  initExerciseFeature();

  //! CORE

  //! EXTERNAL
  Hive.registerAdapter(ExerciseModelAdapter());
  final exercisesBox = await Hive.openBox<ExerciseModel>('exercises');
  sl.registerLazySingleton<Box<ExerciseModel>>(() => exercisesBox);
  final onboardingBox = await Hive.openBox<bool>('onboarding');
  sl.registerLazySingleton<Box<bool>>(() => onboardingBox);
}

/// Register the dependencies needed for the game feature
void initExerciseFeature() {
  // Bloc
  sl.registerFactory(
    () => ExerciseBloc(
      addExercise: sl<AddExercise>(),
      fetchExercises: sl<FetchExercises>(),
      doneOnboarding: sl<DoneOnboarding>(),
      isDoneOnboarding: sl<IsDoneOnboarding>(),
      removeExercises: sl<RemoveExercises>(),
    ),
  );

  // Usecases
  sl.registerLazySingleton(() => AddExercise(exerciseRepository: sl<IExerciseRepository>()));
  sl.registerLazySingleton(() => FetchExercises(exerciseRepository: sl<IExerciseRepository>()));
  sl.registerLazySingleton(() => RemoveExercises(exerciseRepository: sl<IExerciseRepository>()));
  sl.registerLazySingleton(() => DoneOnboarding(onboardingRepository: sl<IOnboardingRepository>()));
  sl.registerLazySingleton(
      () => IsDoneOnboarding(onboardingRepository: sl<IOnboardingRepository>()));

  // Repositories
  sl.registerLazySingleton<IExerciseRepository>(
      () => ExerciseRepository(datasource: sl<IExerciseDatasource>()));
  sl.registerLazySingleton<IOnboardingRepository>(
      () => OnboardingRepository(datasource: sl<IOnboardingDatasource>()));

  // Datasource
  sl.registerLazySingleton<IExerciseDatasource>(
    () => HiveExerciseDatasource(localStorage: sl<Box<ExerciseModel>>()),
  );
  sl.registerLazySingleton<IOnboardingDatasource>(
    () => HiveOnboardingDatasource(localStorage: sl<Box<bool>>()),
  );
}
