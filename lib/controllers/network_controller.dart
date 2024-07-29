import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NetworkController extends GetxController {
  Widget myTextWidgetOffline = const Text(
    "No Connection",
    style: TextStyle(
      fontFamily: "lato",
      color: Colors.white,
      fontSize: 12,
    ),
    textAlign: TextAlign.center,
  );
  Widget myTextWidgetOnline = const Text(
    "Back Online",
    style: TextStyle(
      fontFamily: "lato",
      color: Colors.white,
      fontSize: 12,
    ),
    textAlign: TextAlign.center,
  );

  final Connectivity _connectivity = Connectivity();

  @override
  void onInit() {
    super.onInit();

    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void _updateConnectionStatus(ConnectivityResult connectivityResult) {
    if (connectivityResult == ConnectivityResult.none) {
      Get.rawSnackbar(
          messageText: myTextWidgetOffline,
          duration: 1.days,
          padding: const EdgeInsets.all(4));
    } else {
      if (Get.isSnackbarOpen) {
        Get.closeCurrentSnackbar();

        Timer(1.seconds, () {
          // Get.closeCurrentSnackbar();
        });
        Get.rawSnackbar(
            messageText: myTextWidgetOnline,
            duration: 2.seconds,
            padding: const EdgeInsets.all(4),
            backgroundColor: const Color.fromARGB(255, 13, 156, 18));
      }
    }
  }
}
