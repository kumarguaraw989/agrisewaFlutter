import 'package:agrisewa_flutter/core/resourses/data_state.dart';
import 'package:agrisewa_flutter/core/usecases/usecase.dart';
import 'package:agrisewa_flutter/features/daily_news/domain/entity/article.dart';
import 'package:agrisewa_flutter/features/daily_news/domain/repository/article_repository.dart';

class GetArticleUseCase
    implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;
  GetArticleUseCase(this._articleRepository);
  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticle();
  }
}
