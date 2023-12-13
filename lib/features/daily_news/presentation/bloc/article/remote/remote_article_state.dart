import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import '../../../../domain/entity/article.dart';

abstract class RemoteArticleState extends Equatable{
   final List<ArticleEntity> ?  articles;
   final DioError ?  error;
   const RemoteArticleState({this.articles,this.error});
   @override
   List<Object> get props => [articles!,error!];
}
class RemoteArticlesLoading extends RemoteArticleState{
  const RemoteArticlesLoading();
}
class RemoteArticlesDone extends RemoteArticleState{
  const RemoteArticlesDone(List<ArticleEntity> article) : super(articles: article);
}
class  RemoteArticleError extends RemoteArticleState{
  const RemoteArticleError(DioError error) : super(error: error);
}