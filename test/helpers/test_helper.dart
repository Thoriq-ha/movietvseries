import 'package:movietvseries/data/datasources/db/database_helper.dart';
import 'package:movietvseries/data/datasources/movie_local_data_source.dart';
import 'package:movietvseries/data/datasources/movie_remote_data_source.dart';
import 'package:movietvseries/data/datasources/tv_local_data_source.dart';
import 'package:movietvseries/data/datasources/tv_remote_data_source.dart';
import 'package:movietvseries/domain/repositories/movie_repository.dart';
import 'package:movietvseries/domain/repositories/tv_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

@GenerateMocks([
  MovieRepository,
  MovieRemoteDataSource,
  MovieLocalDataSource,
  DatabaseHelper,
  TvRepository,
  TvRemoteDataSource,
  TvLocalDataSource
], customMocks: [
  MockSpec<http.Client>(as: #MockHttpClient)
])
void main() {}
