
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:news_app_bloc/domain/news/i_news_facade.dart';
import 'package:news_app_bloc/domain/news/news_failure.dart';
import 'package:news_app_bloc/domain/news/news_model.dart';


class NewsRepository implements INewsFacade{
  @override
  Future<Either<NewsFailure, NewsDataModel>> getNews() async {
    final url = Uri.parse("https://newsapi.org/v2/top-headlines?pageSize=100&page=1&country=in&apiKey=223c39d619d8432aae88cacbc37b1238");
    try{
         final response = await http.get(url);
     if(response.statusCode==200){
       final NewsDataModel data = NewsDataModel.fromJson(json.decode(response.body));
       return right(data);

   }
   else{
    return left(const NewsFailure.servereError("Something went wrong"));
   }
    }
    catch(e){

      return left(NewsFailure.servereError("$e"));
    }
    
   


   
   
   
  }
  
}