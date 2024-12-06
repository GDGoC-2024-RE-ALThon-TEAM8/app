import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team8/config/routes/app_router.dart';
import 'package:team8/helper/constants/app_colors.dart';

@immutable
class ShowDialogHelper {
  const ShowDialogHelper._();

  static void showAlert({required String title, required String message}) {
    showCupertinoDialog(
        context: AppRouter.navigatorKey.currentContext!,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              CupertinoDialogAction(
                  isDefaultAction: true,
                  child: const Text(
                    "확인",
                    style: TextStyle(color: AppColors.blue10),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          );
        });
  }

  static void showAlertWithAction(
      {required VoidCallback onPressed,
      required String title,
      required String message}) {
    showCupertinoDialog(
        context: AppRouter.navigatorKey.currentContext!,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                onPressed: () {
                  AppRouter.pop();
                  onPressed();
                },
                child: const Text(
                  "확인",
                  style: TextStyle(color: AppColors.blue10),
                ),
              )
            ],
          );
        });
  }

  static void showAlertWithActionAndCancel(
      {required VoidCallback onPressed,
      required String title,
      required String message,
      required String enterMsg,
      required String cancelMsg}) {
    showCupertinoDialog(
        context: AppRouter.navigatorKey.currentContext!,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                onPressed: () {
                  AppRouter.pop();
                  onPressed();
                },
                child: Text(
                  enterMsg,
                  style: const TextStyle(color: AppColors.blue10),
                ),
              ),
              CupertinoDialogAction(
                isDefaultAction: true,
                onPressed: () {
                  AppRouter.pop();
                },
                child: Text(
                  cancelMsg,
                  style: const TextStyle(color: AppColors.black30),
                ),
              )
            ],
          );
        });
  }

  static void showSnackBar({required String content}) {
    ScaffoldMessenger.of(AppRouter.navigatorKey.currentContext!)
        .showSnackBar(SnackBar(
      content: Text(content),
    ));
  }

  static void showLoading() {
    showCupertinoDialog(
      context: AppRouter.navigatorKey.currentContext!,
      builder: (context) {
        return const CupertinoActivityIndicator(
          color: Colors.white,
          radius: 24,
        );
      }
    );
  }

  static void closeLoading() {
    AppRouter.pop();
  }
}
