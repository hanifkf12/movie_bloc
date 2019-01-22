
import 'package:movie_bloc/models/item_model.dart';
import 'package:movie_bloc/resources/movie_api_priovider.dart';

class Repository{
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() =>
    moviesApiProvider.fetchMovieList();
}