import 'package:flutter/material.dart';

import '../../app_utils.dart';

class IconTextContainer extends StatelessWidget {
  const IconTextContainer({
    super.key,
    this.icon,
    this.label,
    this.backgroundColor,
  });

  final String? icon;
  final Widget? label;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
            color: backgroundColor ?? AppUtils.lightBG,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            if (icon != null)
              Image.asset(
                icon ?? '',
                width: 24.0,
                height: 24.0,
              ),
            if (icon != null && label != null)
              const SizedBox(
                width: 14,
              ),
            label ?? const SizedBox.shrink()
          ],
        ));
  }
}
