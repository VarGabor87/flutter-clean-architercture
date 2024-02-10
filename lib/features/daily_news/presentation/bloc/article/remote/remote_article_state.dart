import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/features/daily_news/domain/entities/article.dart';

abstract class RemoteArticlesState extends Equatable {
  const RemoteArticlesState();

  @override
  List<Object?> get props => [];
}

class RemoteArticlesLoading extends RemoteArticlesState {
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticlesState {
  final List<ArticleEntity> articles;

  const RemoteArticlesDone(this.articles);

  @override
  List<Object?> get props => [articles];
}

class RemoteArticlesError extends RemoteArticlesState {
  final DioError error;

  const RemoteArticlesError(this.error);

  @override
  List<Object?> get props => [error];
}
