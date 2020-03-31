import 'package:common/common.dart';

/// A test service interface that is used as a demonstration to decouple rules
/// from logic.
abstract class TestService{
  /// Returns a string that says *Hello World*.
  String getHelloWorld();
}

/// The implementation of the [TestService] interface as a class.
class TestServiceImpl implements TestService{
  String getHelloWorld() {
    Logger.logDebug("Retrieving Hello World text.", this.runtimeType);
    return "H3ll0 W0rld";
  }
}