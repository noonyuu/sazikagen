import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/color_constant.dart';
import '../page/addalert.dart';

class AppBarComponentWidget extends StatefulWidget implements PreferredSizeWidget {
  final bool isInfoIconEnabled;
  static String filePath = '';

  const AppBarComponentWidget({
    Key? key,
    required this.isInfoIconEnabled,
  }) : super(key: key);

  @override
  Size get preferredSize {
    return Size(double.infinity, 96.0);
  }

  @override
  _AppBarComponentWidgetState createState() => _AppBarComponentWidgetState();
}

class _AppBarComponentWidgetState extends State<AppBarComponentWidget> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(96.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/layout/appbar.png',
                fit: BoxFit.cover,
              ),
              // child: SvgPicture.asset(
              //   'assets/images/appbar.svg',
              //   fit: BoxFit.cover,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
