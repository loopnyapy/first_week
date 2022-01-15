import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool hasLeading;
  final List<Widget>? actions;

  @override
  Size get preferredSize => const Size.fromHeight(64.0);

  const CustomAppBar({
    required this.title,
    Key? key,
    this.hasLeading = false,
    this.actions,
  }) : super(key: key);

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
      actions: actions,
    );
  }
}
