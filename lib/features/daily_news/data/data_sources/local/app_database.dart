import 'package:agrisewa_flutter/features/daily_news/data/data_sources/local/DAO/article_dao.dart';
import 'package:agrisewa_flutter/features/daily_news/data/models/article.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'dart:async';

@Database(version: 1, entities: [ArticleModel])
abstract class AppDatabase extends FloorDatabase{
ArticleDao get articleDAO;
}