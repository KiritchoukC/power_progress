import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import 'features/exercise/data/datasources/hive_exercise_datasource.dart';
import 'features/exercise/data/datasources/hive_onboarding_datasource.dart';
import 'features/exercise/data/datasources/i_exercise_datasource.dart';
import 'features/exercise/data/datasources/i_onboarding_datasource.dart';
import 'features/exercise/data/models/exercise_model.dart';
import 'features/exercise/data/repositories/exercise_repository.dart';
import 'features/exercise/data/repositories/onboarding_repository.dart';
import 'features/exercise/domain/repositories/i_exercise_repository.dart';
import 'features/exercise/domain/repositories/i_onboarding_repository.dart';
import 'features/exercise/domain/usecases/add_exercise.dart';
import 'features/exercise/domain/usecases/get_exercises.dart';
import 'features/exercise/presentation/bloc/exercise_bloc.dart';

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
      getExercises: sl<GetExercises>(),
    ),
  );

  // Usecases
  sl.registerLazySingleton(() => AddExercise(exerciseRepository: sl<IExerciseRepository>()));
  sl.registerLazySingleton(() => GetExercises(exerciseRepository: sl<IExerciseRepository>()));

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
