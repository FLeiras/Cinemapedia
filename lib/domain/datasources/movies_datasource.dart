import 'package:cinemapedia/domain/entities/entities.dart';

abstract class MoviesDatasource {
  Future<List<Movie>> getNowPlaying({int page = 1});

  Future<List<Movie>> getPopular({int page = 1});

  Future<List<Movie>> getUpComing({int page = 1});

  Future<List<Movie>> getVoteAverage({int page = 1});

  Future<Movie> getMovieById(String id);

  Future<List<Movie>> searchMovies(String query);

  Future<List<Movie>> getSimilarMovie(int movieId);

  Future<List<Video>> getYoutubeVideosById(int movieId);
}
