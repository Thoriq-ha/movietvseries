import 'package:dartz/dartz.dart';
import 'package:movietvseries/domain/entities/tv.dart';
import 'package:movietvseries/domain/usecases/get_popular_tv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late GetPopularTv usecase;
  late MockTvRepository mockTvRepository;

  setUp(() {
    mockTvRepository = MockTvRepository();
    usecase = GetPopularTv(mockTvRepository);
  });

  final tTv = <Tv>[];

  test("should get list of tv from repository", () async {
    //arrange
    when(mockTvRepository.getPopularTv()).thenAnswer((_) async => Right(tTv));
    //act
    final result = await usecase.execute();
    //assert
    expect(result, Right(tTv));
  });
}
