import 'package:dartz/dartz.dart';
import 'package:galapedia/common/falure.dart';
import 'package:galapedia/domain/entities/news_entity.dart';
import 'package:galapedia/domain/repository/repository.dart';

class GetNewsCase {
  Repository data;

  GetNewsCase(this.data);

  Future<Either<FailureCondition, List<NewsEntity>>> execute() {
    return data.getSpaceNews();
  }
}
