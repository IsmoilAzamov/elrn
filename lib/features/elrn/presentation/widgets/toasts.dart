import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/constants/app_colors.dart';

//success toast
void showSuccessToast(String message) {
  Fluttertoast.cancel();
  Fluttertoast.showToast(msg: message, toastLength: Toast.LENGTH_LONG, gravity: ToastGravity.TOP, backgroundColor: Colors.green, textColor: Colors.white);
}

//error toast
void showErrorToast(String message) {
  Fluttertoast.cancel();
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.TOP,
    backgroundColor: Colors.red[600],
    textColor: Colors.white,

  );
}

//simple toast
void showSimpleToast(String message) {
  Fluttertoast.cancel();
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.TOP,
    backgroundColor: const Color(0xff6a6a6a),
  );
}





void showBeautifulToast(BuildContext context, String message) {
  Fluttertoast.cancel();

  FToast fToast = FToast();
  fToast.init(context);

  // Custom Toast Widget
  Widget customToast = Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [AppColors.gray, Colors.grey], // Green gradient
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(30.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 3,
          blurRadius: 10,
          offset: const Offset(0, 5), // Positioning of shadow for depth
        ),
      ],
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.check_circle_outline,
          color: Colors.white,
          size: 24.0, // Larger icon for emphasis
        ),
        const SizedBox(width: 12.0),
        Expanded(
          child: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              shadows: [
                Shadow(
                  blurRadius: 5.0,
                  color: Colors.black38,
                  offset: Offset(1.0, 1.0),
                ),
              ],
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis, // Handle long messages elegantly
          ),
        ),
      ],
    ),
  );

  // Show the toast with custom animation and duration
  fToast.showToast(
    child: customToast,
    gravity: ToastGravity.BOTTOM,
    toastDuration: const Duration(seconds: 3),
    positionedToastBuilder: (context, child) {
      return Positioned(
        top: 150.0,
        left: 24.0,
        right: 24.0,
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -1), // Animate from above the screen
            end: Offset.zero, // End at normal position
          ).animate(
            CurvedAnimation(
              parent: Animation.fromValueListenable(
                const AlwaysStoppedAnimation(0.0),),
              curve: Curves.easeOut,
            ),
          ),
          child: child,
        ),
      );
    },
  );
}
