import 'package:equatable/equatable.dart';
import 'package:galapedia/domain/entities/news_entity.dart';

class NewsModel extends Equatable {
  final String? explanation;
  final String? images;
  final String? title;

  const NewsModel({
    this.explanation,
    this.images,
    this.title,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      explanation: json['explanation'],
      images: json['url'],
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() => {
        'explanation': explanation,
        'images': images,
        'title': title,
      };

  NewsEntity toEntity() {
    return NewsEntity(
      explanation: explanation,
      images: images,
      title: title,
    );
  }

  @override
  List<Object?> get props => [explanation, images, title];
}
