import 'package:james_playground/services/logger.dart';

///A tool to retrieve any instance of the apps registered services
///
/// The service locator pattern is a relatively old pattern that was very popular
/// with Java EE. Martin Fowler described it in 2004 on his blog. The goal of
/// this pattern is to improve the modularity of your application by removing
/// the dependency between the client and the implementation of an interface.
///
/// Interfaces are one of the most flexible and powerful tools to decouple
/// software components and to improve the maintainability of your code.
abstract class ServiceLocator{
  static Map _serviceMap;

  /// retrieves or creates an instance of a registered type [T] depending on the
  /// registration
  static T get<T>() {
    if(_serviceMap == null){ //todo: be clever and make this lazy later
      _initialiseServices();
    }
    if(!_serviceMap.containsKey(T.toString())){
      throw ArgumentError('Tried to access a service that you did not register.');
    }

    return _serviceMap[T.toString()];
  }

  //register a new instance.
  static void _registerSingleton<T>(T instance) {
    try {
      _serviceMap[T.toString()] = instance;
    } on Exception catch(e){
      Logger.log('exception whilst adding service to service map: $e');
    }
  }

  /// Initialises all the services for access.
  ///
  /// Please in the future on creation of any services, you register them here to
  /// access them.
  static void _initialiseServices(){
    Logger.logDebug('Initialising the service locator');
    _serviceMap = Map();
    Logger.logDebug('Registering internal services');
  }
}