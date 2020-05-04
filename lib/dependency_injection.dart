import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import 'features/exercise/data/datasources/hive_exercise_datasource.dart';
import 'features/exercise/data/datasources/i_exercise_datasource.dart';
import 'features/exercise/data/repositories/exercise_repository.dart';
import 'features/exercise/domain/entities/exercise.dart';
import 'features/exercise/domain/repositories/i_exercise_repository.dart';
import 'features/exercise/domain/usecases/add_exercise.dart';
import 'features/exercise/presentation/bloc/exercise_bloc.dart';

final GetIt sl = GetIt.instance;

/// Initialize de depdendency injection
Future<void> init() async {
  //! FEATURES
  initExerciseFeature();

  //! CORE

  //! EXTERNAL
  final box = await Hive.openBox<Exercise>('exercises');
  sl.registerLazySingleton<Box<Exercise>>(() => box);
}

/// Register the dependencies needed for the game feature
void initExerciseFeature() {
  // Bloc
  sl.registerFactory(
    () => ExerciseBloc(
      addExercise: sl<AddExercise>(),
    ),
  );

  // Usecases
  sl.registerLazySingleton(() => AddExercise(exerciseRepository: sl<IExerciseRepository>()));

  // Repositories
  sl.registerLazySingleton<IExerciseRepository>(
      () => ExerciseRepository(datasource: sl<IExerciseDatasource>()));

  // Datasource
  sl.registerLazySingleton<IExerciseDatasource>(
    () => HiveExerciseDatasource(localStorage: sl<Box<Exercise>>()),
  );
}
