import 'package:elrn/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../di.dart';
import '../../../../main.dart';
import '../bloc/theme/theme_bloc.dart';

class CurvedAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBackPressed;
  final List<Widget>? actions;

  const CurvedAppBar({super.key, required this.title, this.onBackPressed, this.actions});

  @override
  State<CurvedAppBar> createState() => _CurvedAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(62.0);
}

class _CurvedAppBarState extends State<CurvedAppBar> {
  Size get preferredSize => Size.fromHeight(62.0);

  // Set the height of the app bar
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: preferredSize.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            color: AppColors.lightBlue,
            boxShadow: box.get('theme') == 'dark'
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ]
                : [],
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.zero,
          child: SizedBox(
            height: preferredSize.height - 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Theme.of(context).primaryColorDark,
              ),
              height: preferredSize.height + 10, // Make it slightly taller
              child: AppBar(
                scrolledUnderElevation: 0,
                backgroundColor: Colors.transparent,
                elevation: 0,
                // Remove the default AppBar shadow
                automaticallyImplyLeading: false,

                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 18),
                  onPressed: () {
                    if (widget.onBackPressed != null) {
                      widget.onBackPressed!();
                    } else {
                      Navigator.pop(context);
                    }
                  },
                ),
                centerTitle: true,
                title: Text(
                  widget.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                actions: (widget.actions ?? []) +
                    [
                      //theme icon
                      IconButton(
                        icon: Icon(Icons.brightness_4, color: Colors.white, size: 18),
                        onPressed: () {
                          final themeBloc = BlocProvider.of<ThemeBloc>(navigatorKey.currentContext!);
                          if (themeBloc.state is LightTheme) {
                            themeBloc.add(ToggleDark());
                          } else {
                            themeBloc.add(ToggleLight());
                          }

                        },
                      ),
                    ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// // Custom Clipper for the wave shape at the bottom
// class BottomWaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0.0, size.height - 10); // Start at bottom-left
//     var firstControlPoint = Offset(size.width / 2, size.height);
//     var firstEndPoint = Offset(size.width, size.height - 10);
//
//     // Create a curve towards the center and right
//     path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
//
//     path.lineTo(size.width, 0.0); // Top-right corner
//     path.close(); // Complete the path
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
