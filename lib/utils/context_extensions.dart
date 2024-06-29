import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// Extension for BuildContext to get theme, textTheme and colorScheme
extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  double get height => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;
}

extension ContextExtension on BuildContext {
  /// This method shows a SnackBar with the AwesomeSnackbarContent inside it.
  /// The SnackBar is used to show a banner at the bottom of the screen.
  /// We use the [ScaffoldMessenger] to show the SnackBar.
  /// When representing errors, we use the [ContentType.failure] to show a red banner.
  void showErrorSnackBar({
    String title = 'Hata',
    required String message,
    String actionText = 'OK',
    void Function()? onActionPressed,
  }) {
    final SnackBar snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: title,
        message: message,
        contentType: ContentType.failure,
      ),
    );

    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  /// This method shows a MaterialBanner with the AwesomeSnackbarContent inside it.
  /// The MaterialBanner is used to show a banner at the top of the screen.
  /// It is used to show a success message.
  void showAwesomeMaterialBanner({
    required String title,
    required String message,
    String actionText = 'OK',
    void Function()? onActionPressed,
  }) {
    final MaterialBanner materialBanner = MaterialBanner(
      elevation: 0,
      backgroundColor: Colors.transparent,
      forceActionsBelow: true,
      content: AwesomeSnackbarContent(
        title: title,
        message: message,
        contentType: ContentType.success,
        inMaterialBanner: true,
      ),
      actions: const <Widget>[SizedBox.shrink()],
    );

    ScaffoldMessenger.of(this)
      ..hideCurrentMaterialBanner()
      ..showMaterialBanner(materialBanner);
  }

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
  bool get isIOS => Theme.of(this).platform == TargetPlatform.iOS;
  bool get isAndroid => Theme.of(this).platform == TargetPlatform.android;
}

extension ListGutter on List<Widget> {
  /// This method adds a gutter between each widget in the list.
  /// The gutter is a SizedBox with a height of 16.
  List<Widget> seperate(double space) {
    final List<Widget> list = <Widget>[];
    for (int i = 0; i < length; i++) {
      list.add(this[i]);
      if (i != length - 1) {
        list.add(Gap(space));
      }
    }
    return list;
  }
}
