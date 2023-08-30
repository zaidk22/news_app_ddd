part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.initialized () = _Initialized;

  const factory NewsEvent.loaded(Articles articles) = _ArticleLoaded;
  const factory NewsEvent.failure() = _NewsFailure;
  const factory NewsEvent.cilcked() = _Clicked;
}
