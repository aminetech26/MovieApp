import 'dart:developer';
import 'package:state_management/data/core/api_client.dart';
import 'package:state_management/data/models/cast_result_model.dart';
import 'package:state_management/data/models/movie_details_model.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/data/models/movies_result_model.dart';
import 'package:state_management/data/models/video_model.dart';
import 'package:state_management/data/models/video_result_model.dart';
import 'package:state_management/domain/entities/movie_detail_entity.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>> getTrending();
  Future<List<MovieModel>> getPopular();
  Future<List<MovieModel>> getPlayingNow();
  Future<List<MovieModel>> getComingSoon();
  Future<MovieDetailsModel> getMovieDetails(int id);
  Future<List<CastModel>> getCast(int id);
  Future<List<VideoModel>> getVideos(int id);
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final ApiClient _apiClient;
  MovieRemoteDataSourceImpl(this._apiClient); //Dependancy Injection
  @override
  Future<List<MovieModel>> getTrending() async {
    final response = await _apiClient.get('trending/movie/day');
    List<MovieModel> movies = MoviesResultModel.fromJson(response).results!;
    return movies;
  }

  @override
  Future<List<MovieModel>> getComingSoon() async {
    final response = await _apiClient.get('movie/upcoming');
    List<MovieModel> movies = MoviesResultModel.fromJson(response).results!;
    return movies;
  }

  @override
  Future<List<MovieModel>> getPlayingNow() async {
    final response = await _apiClient.get('movie/now_playing');
    List<MovieModel> movies = MoviesResultModel.fromJson(response).results!;
    return movies;
  }

  @override
  Future<List<MovieModel>> getPopular() async {
    final response = await _apiClient.get('movie/popular');
    List<MovieModel> movies = MoviesResultModel.fromJson(response).results!;
    return movies;
  }

  @override
  Future<MovieDetailsModel> getMovieDetails(int id) async {
    final response = await _apiClient.get('movie/$id');
    MovieDetailsModel movieDetails = MovieDetailsModel.fromJson(response);
    return movieDetails;
  }

  @override
  Future<List<CastModel>> getCast(int id) async {
    final response = await _apiClient.get('movie/$id/credits');
    log(response.toString());
    final castCrew = CastCrewResultModel.fromJson(response);
    return castCrew.cast;
  }

  @override
  Future<List<VideoModel>> getVideos(int id) async {
    final response = await _apiClient.get('movie/$id/videos');
    log(response.toString());
    final videos = VideoResultModel.fromJson(response);
    return videos.results;
  }
}
