part of 'news_bloc.dart';

@freezed
 abstract class NewsState with _$NewsState {
 const factory NewsState.initial() = _Initial;
 const factory NewsState.loading() = _Loading;
 const factory NewsState.loaded() = _Loaded;
 const factory NewsState.failure() = _Failure;
}


