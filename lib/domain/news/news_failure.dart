// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';


part 'news_failure.freezed.dart';

@freezed
class NewsFailure with _$NewsFailure{
  const factory NewsFailure.servereError(String error) = _ServerError;
}