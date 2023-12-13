import 'package:agrisewa_flutter/features/daily_news/domain/entity/article.dart'; 
import '../../../../core/resourses/data_state.dart';

abstract class ArticleRepository{
  Future <DataState<List<ArticleEntity>>> getNewsArticle();
}