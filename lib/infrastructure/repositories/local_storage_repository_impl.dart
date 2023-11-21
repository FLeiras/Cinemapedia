import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/datasources/local_storage_datasource.dart';
import 'package:cinemapedia/domain/repositories/local_storage_repository.dart';

class LocalStorageRepositoryImpl extends LocalStogareRepository {
  final LocalStorageDatasouce datasouce;

  LocalStorageRepositoryImpl(this.datasouce);

  @override
  Future<bool> isMovieFavorite(int movieId) {
    return datasouce.isMovieFavorite(movieId);
  }

  @override
  Future<List<Movie>> loadMovie({int limit = 10, offset = 0}) {
    return datasouce.loadMovie(limit: limit, offset: offset);
  }

  @override
  Future<void> toggleFavorite(Movie movie) {
    return datasouce.toggleFavorite(movie);
  }
}
