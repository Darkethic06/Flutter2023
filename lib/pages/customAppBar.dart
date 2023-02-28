import 'package:flutter/material.dart';
import 'package:koushik/pages/settings.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final Widget? titleWidget;
  final bool showActionIcon;
  final VoidCallback onMenuActionTap;

  const CustomAppBar(
      {this.title = '',
      this.leading,
      this.titleWidget,
      this.showActionIcon = false,
      required this.onMenuActionTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: SafeArea(
        child: Stack(
          // alignment: Alignment.,
          children: [
            Positioned.fill(
                child: titleWidget == null
                    ? Center(
                        child: Text(
                          title,
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    : Center(
                        child: titleWidget!,
                      )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                leading ??
                    Transform.translate(
                      offset: Offset(-14, 0),
                      child: BackButton(),
                    ),
                if (showActionIcon)
                  Transform.translate(
                    offset: Offset(10, 0),
                    child: InkWell(
                      onTap: onMenuActionTap,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 150);
}
