import 'package:galapedia/data/sources/remote_sources.dart';
import 'package:galapedia/domain/repository/repository.dart';
import 'package:galapedia/domain/usecase/get_news_case.dart';
import 'package:galapedia/presentation/bloc/news_bloc/news_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void init() {
  // Bloc Provider
  locator.registerFactory(() => NewsBloc(locator()));

  // Usecase
  locator.registerLazySingleton(() => GetNewsCase(locator()));

  // Source
  locator.registerLazySingleton<RemoteSource>(() => RemoteSourceImpl());

// Repository
  locator.registerLazySingleton<Repository>(() => RepositoryImpl(locator()));

  // External
  locator.registerLazySingleton(() => http.Client());
}
