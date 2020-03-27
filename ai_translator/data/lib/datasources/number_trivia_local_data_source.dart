import 'dart:convert';
import 'package:common/error/exceptions.dart';

import '../models/number_trivia_model.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class NumberTriviaLocalDataSource {
  /// Gets the cached [NumberTriviaModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [NoLocalDataException] if no cached data is present.
  Future<NumberTriviaModel> getLastNumberTrivia();

  Future<void> cacheNumberTrivia(NumberTriviaModel triviaToCache);
}

const CACHED_NUMBER_TRIVIA = 'CACHED_NUMBER_TRIVIA';

class NumberTriviaLocalDataSourceImpl implements NumberTriviaLocalDataSource {
  SharedPreferences _sharedPreferences;
  NumberTriviaLocalDataSourceImpl();

  @override
  Future<NumberTriviaModel> getLastNumberTrivia() async{
    if(_sharedPreferences == null){
      _sharedPreferences = await SharedPreferences.getInstance();
    }
    final jsonString = _sharedPreferences.getString(CACHED_NUMBER_TRIVIA);
    if (jsonString != null) {
      return Future.value(NumberTriviaModel.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheNumberTrivia(NumberTriviaModel triviaToCache) async {
    if(_sharedPreferences == null){
      _sharedPreferences = await SharedPreferences.getInstance();
    }
    return _sharedPreferences.setString(
      CACHED_NUMBER_TRIVIA,
      json.encode(triviaToCache.toJson()),
    );
  }
}
