import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DeviceUtils {
  DeviceUtils._();

  static void hideKeyboard(BuildContext context) =>
      FocusScope.of(context).requestFocus(FocusNode());

  static void setStatusBarColor(Color color) async =>
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color),
      );
  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  static void setFullScreen(bool enable) => SystemChrome.setEnabledSystemUIMode(
    enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge,
  );

  static double getScreenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double getScreenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double getPixelRatio(BuildContext context) =>
      MediaQuery.of(context).devicePixelRatio;

  static double getStatusBarHeight(BuildContext context) =>
      MediaQuery.of(context).padding.top;

  static double get bottomNavigationBarHeight => kBottomNavigationBarHeight;

  static double get appBarHeight => kToolbarHeight;

  static double getKeyboardHeight(BuildContext context) {
    final viewInsets = MediaQuery.of(context).viewInsets;
    return viewInsets.bottom;
  }

  static bool isKeyboardVisible(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom > 0;
  }

  static bool get isPhysicalDevice =>
      defaultTargetPlatform == TargetPlatform.android ||
      defaultTargetPlatform == TargetPlatform.iOS;

  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  static void setPreferredOrientation(
    List<DeviceOrientation> orientations,
  ) async => await SystemChrome.setPreferredOrientations(orientations);

  static void hideStatusBar() =>
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  static void showStatusBar() => SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: SystemUiOverlay.values,
  );

  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException {
      return false;
    }
  }

  static bool get isIOS => Platform.isIOS;

  static bool get isAndroid => Platform.isAndroid;

  static void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
