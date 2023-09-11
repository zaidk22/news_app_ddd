

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_bloc/application/news/news_bloc.dart';

class NewsBody extends StatelessWidget {
  const NewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
  builder: (context, state) {
    return state.when(
      initial: () => const Text('Initial State'),
      loading: () => const CircularProgressIndicator(),
      loaded: (articles) => ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) => ListTile(
         title: Text(articles[index].title ?? ""),
         leading: articles[index].urlToImage ==null ?const Icon(Icons.error) : Image.network(articles[index].urlToImage ?? ""),
      ),), // Replace with your article list widget
      failure: () => const Text('Failed to load articles'),
    );
  },
);

}


}