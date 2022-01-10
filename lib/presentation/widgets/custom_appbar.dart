import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    this.hasLeading = false,
  }) : super(key: key);

  final String title;
  final bool hasLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: hasLeading
          ? IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
            )
          : Container(),
      centerTitle: false,
      title: Text(title),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64.0);
}
