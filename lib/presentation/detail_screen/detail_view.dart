import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app_utils.dart';
import '../common_widget/my_text.dart';
import '../home_screen/home_view.dart';
import 'item_detail.dart';

class DetailView extends StatelessWidget {
  final String imageUrl;
  final String label;
  final String subLabel;
  final int index;

  const DetailView({super.key, required this.imageUrl, required this.label, required this.subLabel, required this.index});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: AppUtils.lightBG,
                      child: const Icon(CupertinoIcons.arrow_turn_up_left),
                    ),
                  ),
                  const MyText(text: 'Burger'),
                  CircleAvatar(
                    backgroundColor: AppUtils.lightBG,
                    child: const Icon(CupertinoIcons.bookmark),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyText(
                    text: 'Meat Cheese\nBurger',
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                  MyText(
                    text: '\$ 12.67',
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              Hero(tag:'item$index',child: Image.asset(imageUrl)),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ItemDetail(
                    icon: AppUtils.meat,
                    label: 'Meat',
                    calories: '30cal',
                  ),
                  ItemDetail(
                    icon: AppUtils.cheese,
                    label: 'Cheese',
                    calories: '10cal',
                  ),
                  ItemDetail(
                    icon: AppUtils.tomato,
                    label: 'Tomato',
                    calories: '23cal',
                  ),
                  ItemDetail(
                    icon: AppUtils.cabbage,
                    label: 'Green Leaf',
                    calories: '22cal',
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.only(right: 30, top: 8, bottom: 10),
                decoration: BoxDecoration(
                    color: AppUtils.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
                      decoration: BoxDecoration(
                          color: AppUtils.lightOrange,
                          borderRadius: BorderRadius.circular(40)),
                      child: Image.asset(
                        AppUtils.bag,
                        width: 36.0,
                        height: 36.0,
                      ),
                    ),
                    const Spacer(),
                    MyText(
                      text: 'Checkout Now',
                      textColor: AppUtils.black,
                      fontSize: 18,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

