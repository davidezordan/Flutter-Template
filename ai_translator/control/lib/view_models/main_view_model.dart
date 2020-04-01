import 'package:infrastructure/ViewModels/view_model_base.dart';
import 'package:services/services.dart';

class MainViewModel extends ViewModelBase {

  TestService _testService;

  MainViewModel(){
    // retrieve the test service
    _testService = ServiceLocator.get<TestService>();
    textToDisplay = _testService.getHelloWorld();
  }

  String _textToDisplay;

  String get textToDisplay => _textToDisplay;

  set textToDisplay(String text) {
    _textToDisplay = text;
    notifyListeners();
  }

  void changeText(){
    textToDisplay += "a";
  }
}