import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:galapedia/common/falure.dart';
import 'package:galapedia/domain/entities/news_entity.dart';
import 'package:galapedia/domain/usecase/get_news_case.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetNewsCase news;

  NewsBloc(this.news) : super(NewsInitial()) {
    on<NewsEvent>(
      (event, emit) async {
        emit(NewsInitial());

        final Either<FailureCondition, List<NewsEntity>> result =
            await news.data.getSpaceNews();

        result.fold(
          (FailureCondition failure) => emit(NewsError(failure.message)),
          (List<NewsEntity> news) => emit(NewsLoaded(news)),
        );
      },
    );
  }
}
