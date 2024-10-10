import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/home_screen/home_view.dart';

import '../../app_utils.dart';
import '../common_widget/my_text.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({
    super.key,
    required this.icon,
    required this.label,
    required this.calories,
  });

  final String icon;
  final String label;
  final String calories;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            radius: 30,
            backgroundColor: AppUtils.lightPink.withOpacity(0.4),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(icon),
            )),
        const SizedBox(
          height: 10,
        ),
        MyText(
          text: label,
          fontSize: 18,
        ),
        MyText(
          text: calories,
          fontSize: 12,
          textColor: AppUtils.black.withOpacity(0.5),
        )
      ],
    );
  }
}
