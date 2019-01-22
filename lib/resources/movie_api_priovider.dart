import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';

import 'package:movie_bloc/models/item_model.dart';
class MovieApiProvider{

  Client client = Client();

  final _apiKey = '23256e2f55aec19420181dbb09b3d7ba';
  
  Future<ItemModel> fetchMovieList() async{
    print("entered");
    final response = await client.get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");
    print(response.body.toString());
    if(response.statusCode ==200){
      return ItemModel.fromJson(json.decode(response.body));
    }else{
      throw Exception('Failed to Load Post');
    }
  }

}