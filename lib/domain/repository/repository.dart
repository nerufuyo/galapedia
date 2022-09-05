import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:galapedia/common/falure.dart';
import 'package:galapedia/common/static.dart';
import 'package:galapedia/data/sources/remote_sources.dart';
import 'package:galapedia/domain/entities/news_entity.dart';

abstract class Repository {
  Future<Either<FailureCondition, List<NewsEntity>>> getSpaceNews();
}

class RepositoryImpl implements Repository {
  final RemoteSource data;

  RepositoryImpl(this.data);

  @override
  Future<Either<FailureCondition, List<NewsEntity>>> getSpaceNews() async {
    try {
      final result = await data.getSpaceNews();
      return Right(result.map((e) => e.toEntity()).toList());
    } on SocketException {
      return const Left(ConnectionFailure('Connection Failed!'));
    } on ServerException {
      return const Left(ServerFailure('Failed Connect to Server'));
    }
  }
}
