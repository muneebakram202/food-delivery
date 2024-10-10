import 'package:flutter/material.dart';

import '../../app_utils.dart';
import '../common_widget/my_text.dart';
import '../home_screen/home_view.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final String label;
  final String subLabel;
  final VoidCallback onTap;
  final bool isSelected;

  const CategoryItem({super.key,
    required this.image,
    required this.label,
    required this.subLabel,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [

          Positioned.fill(
            child: AnimatedOpacity(
              opacity: isSelected ? 0.0 : 1.0,
              duration: const Duration(milliseconds: 300),
              child: Container(
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: AppUtils.lightPink.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),

          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(image),
                ),


                AnimatedOpacity(
                  opacity: isSelected ? 0.0 : 1.0,
                  duration: const Duration(milliseconds: 300),
                  child: Column(
                    children: [
                      MyText(
                        text: label,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                      MyText(
                        text: subLabel,
                        textColor: AppUtils.black.withOpacity(0.5),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 0,
            right: 0,
            child: AnimatedOpacity(
              opacity: isSelected ? 0.0 : 1.0,
              duration: const Duration(milliseconds: 300),
              child: GestureDetector(
                onTap: onTap,
                child: CircleAvatar(
                  backgroundColor: AppUtils.lightBG.withOpacity(0.5),
                  child: Image.asset(
                    AppUtils.bag,
                    width: 24.0,
                    height: 24.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
