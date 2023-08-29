


import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:news_app_bloc/presentation/core/custom_app_bar.dart';
import 'package:news_app_bloc/presentation/news/widgets/news_body.dart';


@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      appBar:  CustomAppBar(title: "News"),
      body: NewsBody(),
    );
  }
}