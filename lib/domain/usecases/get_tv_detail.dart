import 'package:dartz/dartz.dart';
import 'package:movietvseries/domain/entities/tv_detail.dart';
import 'package:movietvseries/common/failure.dart';
import 'package:movietvseries/domain/repositories/tv_repository.dart';

class GetTvDetail {
  final TvRepository repository;

  GetTvDetail(this.repository);

  Future<Either<Failure, TvDetail>> execute(int id) {
    return repository.getTvDetail(id);
  }
}
