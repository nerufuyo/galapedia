import 'package:equatable/equatable.dart';

class NewsEntity extends Equatable {
  final String? explanation;
  final String? images;
  final String? title;

  const NewsEntity({
    this.explanation,
    this.images,
    this.title,
  });

  @override
  List<Object?> get props => [explanation, images, title];
}
