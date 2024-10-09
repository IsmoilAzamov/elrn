import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function? onBackPressed;
  final bool? isBackButtonVisible;

  const CustomAppBar({super.key, required this.title, this.onBackPressed, this.isBackButtonVisible});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //set border radius
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(8),
        ),
      ),
      elevation: 1.0,
      shadowColor:Colors.white,

      leading: isBackButtonVisible==false?null: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 20), // Back arrow icon
        onPressed: () {
          if (onBackPressed != null) {
            onBackPressed!();
          } else {
            Navigator.pop(context); // Default action: pop navigation stack
          }
        },
      ),
      centerTitle: true,
      // Centers the title
      title: Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white, // White text color
            fontSize: 20, // Adjust font size
            fontWeight: FontWeight.w500, // Bold style
          ),
        ),
      ),
    );
  }

  // You need to implement this for the PreferredSizeWidget interface
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
