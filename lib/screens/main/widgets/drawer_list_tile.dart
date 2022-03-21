import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final String assetPath;
  final VoidCallback onTap;

  const DrawerListTile({
    Key? key,
    required this.title,
    required this.assetPath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 16.0,
      leading: SvgPicture.asset(
        assetPath,
        color: Colors.white,
        height: AppSizes.drawerIconsHeight,
      ),
      title: Text(
        title,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
