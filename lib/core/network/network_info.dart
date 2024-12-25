import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImplementation implements NetworkInfo {
  final InternetConnection connectionChecker;

  NetworkInfoImplementation({required this.connectionChecker});

  @override
  Future<bool> get isConnected => connectionChecker.hasInternetAccess;
}
