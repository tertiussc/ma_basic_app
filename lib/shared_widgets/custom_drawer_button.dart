import 'package:flutter/material.dart';
import 'package:ma_base_app/utils/theme.dart';

class CustomDrawerButton extends StatelessWidget {
  const CustomDrawerButton({
    super.key,
    required this.drawerButtonTitle,
    required this.drawerButtonText,
    required this.drawerButtonIcon,
    required this.onTab,
  });
  final String drawerButtonTitle, drawerButtonText;
  final IconData drawerButtonIcon;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade200),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(drawerButtonIcon, size: 60, color: Colors.black),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(drawerButtonTitle, style: AppTheme.drawTitle),
                Text(drawerButtonText, style: AppTheme.drawText),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
