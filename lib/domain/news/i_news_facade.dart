

import 'package:dartz/dartz.dart';
import 'package:news_app_bloc/domain/news/news_failure.dart';

import 'news_model.dart';

abstract class INewsFacade{
  Future<Either<NewsFailure,NewsDataModel>>  getNews() ;

}