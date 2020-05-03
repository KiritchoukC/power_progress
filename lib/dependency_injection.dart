import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import 'features/exercise/data/datasources/hive_exercise_datasource.dart';
import 'features/exercise/data/datasources/i_exercise_datasource.dart';
import 'features/exercise/domain/entities/exercise.dart';

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
  // sl.registerFactory(
  //   () => GameBloc(
  //     // updateBoard: sl<UpdateBoard>(),
  //   ),
  // );

  // Usecases
  // sl.registerLazySingleton(() => UpdateBoard(boardRepository: sl<BoardRepository>()));

  // Repositories
  // sl.registerLazySingleton<BoardRepository>(
  //     () => LocalBoardRepository(datasource: sl<BoardDataSource>()));

  // Datasource
  sl.registerLazySingleton<IExerciseDatasource>(
    () => HiveExerciseDatasource(localStorage: sl<Box<Exercise>>()),
  );
}
