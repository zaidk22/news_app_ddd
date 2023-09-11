

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_bloc/application/news/news_bloc.dart';

class NewsBody extends StatelessWidget {
  const NewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<NewsBloc,NewsState>(builder: (context, state) {
  if(  state==const NewsState.loading()){
    return const CircularProgressIndicator();
  }
  else if(state == const NewsState.failure()){
    return const Text("failure ");
  }
  else{
    return const Text("data");
  }
    },);
}


}