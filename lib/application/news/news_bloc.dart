import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app_bloc/domain/news/news_model.dart';
import 'package:news_app_bloc/infrastructure/news_repository.dart';
part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

@injectable
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository _newsRepository;
  NewsBloc(this._newsRepository) : super(const NewsState.initial()) {
    on<_Initialized>((event, emit) {
         emit(const NewsState.initial());
    });
      on<_ArticleLoaded>((event, emit) async {
    
          final response = await _newsRepository.getNews();
          emit.call(
            response.fold((l) => const NewsState.failure(),
             (r) => NewsState.loaded(r.articles ?? []))

          );

    });
       on<_ArticleLoaded>((event, emit) async {
    
          final response = await _newsRepository.getNews();
          emit.call(
            response.fold((l) => const NewsState.failure(),
             (r) => NewsState.loaded(r.articles ?? []))

          );

    });
  }
}
