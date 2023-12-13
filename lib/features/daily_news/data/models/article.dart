import 'package:agrisewa_flutter/features/daily_news/domain/entity/article.dart';
import 'package:floor/floor.dart';

@Entity(tableName: 'article',primaryKeys: ['id'],)
class ArticleModel extends ArticleEntity {
    const ArticleModel(
      {id, author, title, description, url, urlToImage, publishedAt, content})
      : super(
            id: id,
            author: author,
            title: title,
            description: description,
            url: url,
            urlToImage: urlToImage,
            publishedAt: publishedAt,
            content: content);
  factory ArticleModel.fromJson(Map<String, dynamic> map) {
    return ArticleModel(
      id: map['id'] ?? "",
      author: map['author'] ?? "",
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      url: map['url'] ?? '',
      urlToImage: map['urlToImage'] ?? '',
      publishedAt: map['publishedAt'] ?? '',
      content: map['content'] ?? '',
    );
  }
}
