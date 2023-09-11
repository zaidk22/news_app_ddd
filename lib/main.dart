import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app_bloc/injection.dart';

import './presentation/app_widget.dart';


void main() async {
     WidgetsFlutterBinding.ensureInitialized();
    
  configureInjection(Environment.prod);
  runApp( const AppWidget());
}
