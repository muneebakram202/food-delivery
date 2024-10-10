import 'package:flutter/material.dart';
import 'package:food_delivery/app_utils.dart';
import 'package:food_delivery/presentation/home_screen/widget/bottom_draag_sheet.dart';
import 'package:food_delivery/presentation/home_screen/widget/item_container.dart';

import '../common_widget/my_text.dart';
import '../detail_screen/list_view.dart';
import 'icon_text_container.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppUtils.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                          backgroundColor: AppUtils.lightBG,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppUtils.black, width: 1.5),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 8,
                                    width: 8,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppUtils.black, width: 1.5),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    height: 8,
                                    width: 8,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppUtils.black, width: 1.5),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      const Spacer(),
                       const CircleAvatar(backgroundImage: NetworkImage(
                           'https://i.pinimg.com/564x/7c/e1/10/7ce110b227b2f50acb36e0de78382285.jpg'),),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: MyText(
                    text: 'Order Your\nFavorite Food',
                    fontSize: 40,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      IconTextContainer(
                          label: MyText(
                            text: 'All',
                            textColor: AppUtils.white,
                          ),
                          backgroundColor: AppUtils.black),
                      const SizedBox(
                        width: 20,
                      ),
                      IconTextContainer(
                        icon: AppUtils.drink,
                        label: MyText(
                          text: 'Drink',
                          textColor: AppUtils.pink,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconTextContainer(
                        icon: AppUtils.burger,
                        label: MyText(
                          text: 'Burger',
                          textColor: AppUtils.yellowOrange,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconTextContainer(
                        icon: AppUtils.cake,
                        label: MyText(
                          text: 'Cake',
                          textColor: AppUtils.pink,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                    height: 20
                  ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      ItemCatergoy(
                        image: AppUtils.pizzaImage,
                        label: 'Pizza',
                        subLabel: '517 Items',
                        backgroundColor: AppUtils.lightPurple, onTap: () {
                          Navigator.push(context,  MaterialPageRoute<void>(
                            builder: (BuildContext context) => const Category(),
                          ),);
                      },
                      ),
                      ItemCatergoy(
                        image: AppUtils.burgerImage,
                        label: 'Burger',
                        subLabel: '517 Items',
                        backgroundColor: AppUtils.lightOrange, onTap: () {
                        Navigator.push(context,  MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Category(),
                        ),); },
                      ),
                      ItemCatergoy(
                        image: AppUtils.hotDogImage,
                        label: 'Hot Dog',
                        subLabel: '517 Items',
                        backgroundColor: AppUtils.lightPink, onTap: () {
                        Navigator.push(context,  MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Category(),
                        ),); },
                      ),
                      ItemCatergoy(
                        image: AppUtils.friedNoodleImage,
                        label: 'Fried Noodle',
                        subLabel: '517 Items',
                        backgroundColor: AppUtils.lightBlue, onTap: () {
                        Navigator.push(context,  MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Category(),
                        ),); },
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 2,
                )
              ],
            ),
            const MyDraggableSheet()
          ],
        ),
      ),
    );
  }
}




