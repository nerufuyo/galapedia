part of 'news_bloc.dart';

abstract class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object> get props => [];
}

class NewsInitial extends NewsState {}

class NewsLoaded extends NewsState {
  final List<NewsEntity> news;

  const NewsLoaded(this.news);

  @override
  List<Object> get props => [news];
}

class NewsError extends NewsState {
  final String error;

  const NewsError(this.error);

  @override
  List<Object> get props => [error];
}
