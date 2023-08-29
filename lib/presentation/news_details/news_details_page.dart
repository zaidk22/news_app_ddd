

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core/custom_app_bar.dart';

@RoutePage()
class NewsDetailsPage extends StatelessWidget {
  const NewsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
     return const  Scaffold(
      appBar:  CustomAppBar(title: "News Details"),
    );
  }
}