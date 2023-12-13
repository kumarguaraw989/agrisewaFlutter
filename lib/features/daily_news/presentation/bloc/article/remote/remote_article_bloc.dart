import 'package:agrisewa_flutter/core/resourses/data_state.dart';
import 'package:agrisewa_flutter/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:agrisewa_flutter/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/usecases/get_article.dart';

class RemoteArticlesBloc extends Bloc<RemoteArticlesEvent,RemoteArticleState>{
  final GetArticleUseCase _getArticleUseCase;
   RemoteArticlesBloc(this._getArticleUseCase) : super(const RemoteArticlesLoading()){
     on <GetArticle> (onGetArticles);
   }

   void onGetArticles(GetArticle event , Emitter<RemoteArticleState> emit) async{
      final dataState = await _getArticleUseCase();
      if(dataState is DataSuccess && dataState.data!.isNotEmpty){
       emit(
         RemoteArticlesDone(dataState.data!)
       );
      }

      if(dataState is DataFailed){
        print(dataState.error!.message);
        emit(
          RemoteArticleError(dataState.error!)
        );
      }
    }
}