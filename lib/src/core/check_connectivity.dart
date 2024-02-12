import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:data_connection_checker/data_connection_checker.dart';

class ConnectivityStatus {
  factory ConnectivityStatus() => _instance;
  static final ConnectivityStatus _instance = ConnectivityStatus._internal();
  ConnectivityStatus._internal();

  bool? _isConnected;
  bool? get isConnected => _isConnected;
  void setIsConnected(bool isConnected) {
    _isConnected = isConnected;
  }
}

Future<bool> checkConnectivity({retry = false}) async {
  if (ConnectivityStatus().isConnected != null && !retry) {
    return ConnectivityStatus().isConnected!;
  }
  bool isConnected = false;
  try {
    final connectivityResult = await (Connectivity()
        .checkConnectivity()
        .timeout(const Duration(milliseconds: 500), onTimeout: () {
      throw ('Timeout CONNECTIVITY');
    }));
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      // has network connection then check internet
      if (await DataConnectionChecker().hasConnection) {
        // Mobile data detected & internet connection confirmed.
        isConnected = true;
      } else {
        // Mobile data detected but no internet connection found.
        // return false;
      }
    } else {
      // no network connection
      // return false;
    }
  } catch (err) {
    // error
  }
  ConnectivityStatus().setIsConnected(isConnected);
  return isConnected;
}
