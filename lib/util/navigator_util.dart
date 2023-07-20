import 'package:flutter/material.dart';

class NavigatorUtil {
  static onLoading(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => const AlertDialog(
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Loading"),
              SizedBox(
                height: 20,
              ),
              LinearProgressIndicator(
                backgroundColor: Colors.white,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static onComplete(BuildContext context) {}
}
