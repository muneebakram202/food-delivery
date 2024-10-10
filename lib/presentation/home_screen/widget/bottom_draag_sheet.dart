
import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/home_screen/widget/sheet_cart_details.dart';

import '../../../app_utils.dart';
import '../../common_widget/my_text.dart';
import '../home_view.dart';

class MyDraggableSheet extends StatefulWidget {
  const MyDraggableSheet({super.key});

  @override
  _MyDraggableSheetState createState() => _MyDraggableSheetState();
}

class _MyDraggableSheetState extends State<MyDraggableSheet> {
  double currentExtent = 0.1;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 0.9,
      builder: (BuildContext context, ScrollController scrollController) {
        return StatefulBuilder(
          builder: (context, setState) {
            return NotificationListener<DraggableScrollableNotification>(
              onNotification: (DraggableScrollableNotification notification) {
                setState(() {
                  currentExtent = notification.extent;
                });
                return true;
              },
              child: SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  margin: const EdgeInsets.only(top: 1),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppUtils.black,
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(16),topLeft: Radius.circular(16)),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppUtils.white,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50))),
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          height: 20,
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 14),
                            decoration: BoxDecoration(
                              color: AppUtils.lightBG,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      if (currentExtent <= 0.11)
                        Padding(
                          padding: const EdgeInsets.symmetric( vertical: 20),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: AppUtils.lightBG,
                                child: const MyText(text: '3'),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  MyText(
                                    text: 'Cart',
                                    textColor: AppUtils.white,
                                    fontSize: 16,
                                  ),
                                  MyText(
                                    text: '3 Items',
                                    textColor:
                                    AppUtils.white.withOpacity(0.8),
                                    fontSize: 12,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60),
                                    child: CircleAvatar(
                                      backgroundColor: AppUtils.lightBG,
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child:
                                        Image.asset(AppUtils.burgerImage),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: CircleAvatar(
                                      backgroundColor: AppUtils.lightBG,
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child:
                                        Image.asset(AppUtils.pizzaImage),
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: AppUtils.lightBG,
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Image.asset(
                                          AppUtils.friedNoodleImage),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      const SheetCartDetail(),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

