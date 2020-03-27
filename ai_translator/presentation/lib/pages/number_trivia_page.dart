import 'package:common/common.dart';
import 'package:data/data.dart';
import 'package:data/repositories/number_trivia_repository_impl.dart';
import 'package:domain/repositories/number_trivia_repository.dart';
import 'package:domain/usecases/get_concrete_number_trivia.dart';
import 'package:domain/usecases/get_random_number_trivia.dart';
import 'package:presentation/bloc/number_trivia_bloc.dart';
import 'package:presentation/bloc/number_trivia_state.dart';
import 'package:presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_focus_watcher/flutter_focus_watcher.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NumberTriviaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FocusWatcher(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Number Trivia'),
      ),
      body: SingleChildScrollView(
        child: buildBody(context),
      ),
      resizeToAvoidBottomInset: false,
    ));
  }

  NumberTriviaBloc generateBlock()  {
    var httpClient = http.Client();
    var dataConnectionChecker = new DataConnectionChecker();
    NumberTriviaRemoteDataSource remoteDataSource = new NumberTriviaRemoteDataSourceImpl(client : httpClient);
    NumberTriviaLocalDataSource localDataSource = new NumberTriviaLocalDataSourceImpl();
    NetworkInfo networkInfo = new NetworkInfoImpl(dataConnectionChecker);
    NumberTriviaRepository repository = new NumberTriviaRepositoryImpl(remoteDataSource : remoteDataSource,localDataSource : localDataSource, networkInfo: networkInfo );
    var getNumberTrivia = new GetConcreteNumberTrivia(repository);
    var getRandomNumberTrivia = new GetRandomNumberTrivia(repository);
    var inputConverter = new InputConverter();
    return NumberTriviaBloc(concrete: getNumberTrivia, random: getRandomNumberTrivia, inputConverter: inputConverter);
  }

  BlocProvider<NumberTriviaBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create:  (_) => generateBlock(),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              // Top half
              BlocBuilder<NumberTriviaBloc, NumberTriviaState>(
                builder: (context, state) {
                  if (state is Empty) {
                    return MessageDisplay(
                      message: 'Start searching!',
                    );
                  } else if (state is Loading) {
                    return LoadingWidget();
                  } else if (state is Loaded) {
                    return TriviaDisplay(numberTrivia: state.trivia);
                  } else if (state is Error) {
                    return MessageDisplay(
                      message: state.message,
                    );
                  }
                  return Container();
                },
              ),
              SizedBox(height: 20),
              // Bottom half
              TriviaControls()
            ],
          ),
        ),
      ),
    );
  }
}
