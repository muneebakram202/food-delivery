import 'package:flutter/material.dart';

import '../../../app_utils.dart';
import '../../common_widget/my_text.dart';

class SheetCartDetail extends StatelessWidget {
  const SheetCartDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          MyText(
            text: 'My Orders',
            textColor: AppUtils.white,
            fontSize: 34,
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 50,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppUtils.white
                              .withOpacity(0.15),
                          borderRadius:
                          BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 20.0),
                      child:
                      Image.asset(AppUtils.burgerImage),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: 'Beef Burger',
                      textColor: AppUtils.white,
                      fontSize: 20,
                    ),
                    MyText(
                      text: 'Meat Cheese Burger',
                      textColor:
                      AppUtils.white.withOpacity(0.5),
                      fontSize: 12,
                    ),
                    MyText(
                      text: 'Size: 111',
                      textColor:
                      AppUtils.white.withOpacity(0.5),
                      fontSize: 12,
                    ),
                    Row(
                      children: [
                        MyText(
                          text: 'Quantity: 1 ~',
                          textColor: AppUtils.white
                              .withOpacity(0.5),
                          fontSize: 12,
                        ),
                        const Spacer(),
                        MyText(
                          text: '\$12.67',
                          textColor: AppUtils.white,
                          fontSize: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 50,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppUtils.white
                              .withOpacity(0.15),
                          borderRadius:
                          BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 20.0),
                      child:
                      Image.asset(AppUtils.burgerImage),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: 'Beef Burger',
                      textColor: AppUtils.white,
                      fontSize: 20,
                    ),
                    MyText(
                      text: 'Meat Cheese Burger',
                      textColor:
                      AppUtils.white.withOpacity(0.5),
                      fontSize: 12,
                    ),
                    MyText(
                      text: 'Size: 111',
                      textColor:
                      AppUtils.white.withOpacity(0.5),
                      fontSize: 12,
                    ),
                    Row(
                      children: [
                        MyText(
                          text: 'Quantity: 1 ~',
                          textColor: AppUtils.white
                              .withOpacity(0.5),
                          fontSize: 12,
                        ),
                        const Spacer(),
                        MyText(
                          text: '\$12.67',
                          textColor: AppUtils.white,
                          fontSize: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20,top: 8,bottom: 8),
            decoration: BoxDecoration(
                color: AppUtils.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(40)
            ),
            child: Row(
              children: [
                MyText(
                  text: 'Apply Coupon Code',
                  textColor:
                  AppUtils.white.withOpacity(0.5),
                  fontSize: 12,
                ),
                const Spacer(),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    decoration: BoxDecoration(
                        color: AppUtils.lightOrange,
                        borderRadius:
                        BorderRadius.circular(20)),
                    child: MyText(
                      text: 'Apply',
                      textColor:
                      AppUtils.black,
                      fontSize: 14,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              MyText(
                text: 'Subtotal',
                textColor: AppUtils.white.withOpacity(0.5),
                fontSize: 12,
              ),
              const Spacer(),
              MyText(
                text: '88.97 \$',
                textColor: AppUtils.white.withOpacity(0.5),
                fontSize: 12,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              MyText(
                text: 'Shipping Fee',
                textColor: AppUtils.white.withOpacity(0.5),
                fontSize: 12,
              ),
              const Spacer(),
              MyText(
                text: 'Standard - Fee',
                textColor: AppUtils.white.withOpacity(0.5),
                fontSize: 12,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              MyText(
                text: 'Estimate',
                textColor: AppUtils.white,
                fontSize: 14,
              ),
              const Spacer(),
              MyText(
                text: '22.97\$',
                textColor: AppUtils.white,
                fontSize: 14,
              ),
            ],
          ),
          const SizedBox(height: 30,),
          Container(
            padding: const EdgeInsets.only(right: 30,top: 8,bottom: 8),
            decoration: BoxDecoration(
                color: AppUtils.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(40)
            ),
            child: Row(
              children: [

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 36,vertical: 12),
                  decoration: BoxDecoration(
                      color: AppUtils.lightOrange,
                      borderRadius:
                      BorderRadius.circular(40)),
                  child:
                  Image.asset(
                    AppUtils.bag,
                    width: 36.0,
                    height: 36.0,
                  ),),
                const Spacer(),
                MyText(
                  text: 'Checkout Now',
                  textColor:
                  AppUtils.white,
                  fontSize: 18,
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}