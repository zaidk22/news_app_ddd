
import 'package:equatable/equatable.dart';

class NewsDataModel extends Equatable {
    String? status;
    int? totalResults;
    List<Articles>? articles;

    NewsDataModel({this.status, this.totalResults, this.articles});

    NewsDataModel.fromJson(Map<String, dynamic> json) {
        status = json["status"];
        totalResults = json["totalResults"];
        articles = json["articles"] == null ? null : (json["articles"] as List).map((e) => Articles.fromJson(e)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["status"] = status;
        _data["totalResults"] = totalResults;
        if(articles != null) {
            _data["articles"] = articles?.map((e) => e.toJson()).toList();
        }
        return _data;
    }

    NewsDataModel copyWith({
        String? status,
        int? totalResults,
        List<Articles>? articles,
    }) => NewsDataModel(
        status: status ?? this.status,
        totalResults: totalResults ?? this.totalResults,
        articles: articles ?? this.articles,
    );
    
      @override
    
      List<Object?> get props => [status,totalResults,articles];

  @override
  String toString() => 'NewsDataModel(status: $status, totalResults: $totalResults, articles: $articles)';
}

class Articles {
    Source? source;
    String? author;
    String? title;
    String? description;
    String? url;
    String? urlToImage;
    String? publishedAt;
    String? content;

    Articles({this.source, this.author, this.title, this.description, this.url, this.urlToImage, this.publishedAt, this.content});

    Articles.fromJson(Map<String, dynamic> json) {
        source = json["source"] == null ? null : Source.fromJson(json["source"]);
        author = json["author"];
        title = json["title"];
        description = json["description"];
        url = json["url"];
        urlToImage = json["urlToImage"];
        publishedAt = json["publishedAt"];
        content = json["content"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(source != null) {
            _data["source"] = source?.toJson();
        }
        _data["author"] = author;
        _data["title"] = title;
        _data["description"] = description;
        _data["url"] = url;
        _data["urlToImage"] = urlToImage;
        _data["publishedAt"] = publishedAt;
        _data["content"] = content;
        return _data;
    }

    Articles copyWith({
        Source? source,
        String? author,
        String? title,
        String? description,
        String? url,
        String? urlToImage,
        String? publishedAt,
        String? content,
    }) => Articles(
        source: source ?? this.source,
        author: author ?? this.author,
        title: title ?? this.title,
        description: description ?? this.description,
        url: url ?? this.url,
        urlToImage: urlToImage ?? this.urlToImage,
        publishedAt: publishedAt ?? this.publishedAt,
        content: content ?? this.content,
    );
}

class Source {
    dynamic id;
    String? name;

    Source({this.id, this.name});

    Source.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        name = json["name"];
    }

    Map<String, dynamic> toJson() {
        // ignore: no_leading_underscores_for_local_identifiers
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["name"] = name;
        return _data;
    }

    Source copyWith({
        dynamic id,
        String? name,
    }) => Source(
        id: id ?? this.id,
        name: name ?? this.name,
    );
}