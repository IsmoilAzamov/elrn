
import 'package:flutter/material.dart';

Widget loadingIndicator() {
  return Container(
    padding: const EdgeInsets.all(16),
    child: const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    ),
  );
}

