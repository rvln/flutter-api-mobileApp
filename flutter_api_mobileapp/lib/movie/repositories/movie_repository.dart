import 'package:dartz/dartz.dart';
import 'package:flutter_api_mobileapp/movie/models/movie_model.dart';

abstract class MovieRepository {
  Future<Either<String, MovieResponseModel>> getDiscover({int page = 1});
}
