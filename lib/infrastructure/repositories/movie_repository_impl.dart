import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/movie_repositorie.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MoviesDatasource datasource;

  MovieRepositoryImpl(
    this.datasource,
  );

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return datasource.getNowPlaying(page: page);
  }
}
