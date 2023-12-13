import 'package:agrisewa_flutter/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:agrisewa_flutter/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';
import 'package:agrisewa_flutter/features/daily_news/presentation/widgets/article_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DailyNews extends StatelessWidget{
  const DailyNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return  Scaffold(
       appBar:_buildAppbar(),
       body:_buildBody(),
     );
  }
  _buildAppbar(){
    return AppBar(
      title: const Text('Daily News',style: TextStyle(color: Colors.black),),
    );
  }
  _buildBody(){
    return BlocBuilder<RemoteArticlesBloc,RemoteArticleState>(
      builder: (_,state){
        if(state is RemoteArticlesLoading){
          return const Center(child: CupertinoActivityIndicator(),);
        }
        if(state is RemoteArticleError){
          return const Center(child: Icon(Icons.refresh),);
        }
        if(state is RemoteArticlesDone){
          return ListView.builder(itemBuilder: (context,index){
            return ArticleWidget(article: state.articles![index],);
          },itemCount: state.articles!.length,);
        }
        return SizedBox();
      },
    );
  }
}