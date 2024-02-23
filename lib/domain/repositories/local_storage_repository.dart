import '../entities/movie.dart';

abstract class LocalStogareRepository {
  Future<void> toggleFavorite(Movie movie);

  Future<bool> isMovieFavorite(int movieId);

  Future<List<Movie>> loadMovie({int limit = 10, offset = 0});
}
