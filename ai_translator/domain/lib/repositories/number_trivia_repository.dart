import 'package:dartz/dartz.dart';
import '../entities/number_trivia.dart';
import 'package:common/common.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}