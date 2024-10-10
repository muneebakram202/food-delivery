import 'package:flutter/material.dart';

import '../../../app_utils.dart';
import '../../common_widget/my_text.dart';

class ItemCatergoy extends StatelessWidget {
  const ItemCatergoy({
    super.key,
    required this.image,
    required this.label,
    required this.subLabel,
    required this.backgroundColor, required this.onTap,
  });

  final String image;
  final String label;
  final String subLabel;
  final Color backgroundColor;
  final Function() onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.45,
        width: MediaQuery.sizeOf(context).width * 0.8,
        child: Stack(
          children: [
            Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 34),
                  child: Container(
                    decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                )),
            Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                      child: Image.asset(
                        image,
                      )),
                  MyText(
                    text: label,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                  MyText(
                    text: subLabel,
                    textColor: AppUtils.black.withOpacity(0.5),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
