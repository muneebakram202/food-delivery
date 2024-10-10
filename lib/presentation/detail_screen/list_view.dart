import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/app_utils.dart';
import 'package:food_delivery/presentation/detail_screen/detail_view.dart';
import 'package:food_delivery/presentation/home_screen/home_view.dart';

import '../common_widget/my_text.dart';
import 'category_item.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final List<Map<String, String>> items = List.generate(
      10,
      (index) => {
            'image': AppUtils.pizzaImage,
            'label': 'Pizza $index',
            'subLabel': '${517 + index} Items',
          });
  int? selectedIndex;

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
                    onTap: () {
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
                height: 30,
              ),
              Expanded(
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      left: selectedIndex == null ? 0 :  - 220,
                      duration: const Duration(milliseconds: 300),
                      child: const MyText(
                        text: '155+ Results\nFound',
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Positioned(
                      right: 0,
                      bottom: 10,
                      child: Image.asset(
                        AppUtils.menu,
                        width: 30.0,
                        height: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 6,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.7),
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimatedOpacity(
                      opacity: selectedIndex == null || selectedIndex == index
                          ? 1.0
                          : 0.0,
                      duration: const Duration(milliseconds: 300),
                      child: Hero(
                        tag: 'item$index',
                        child: CategoryItem(
                          image: items[index]['image'] ?? '',
                          label: items[index]['label'] ?? '',
                          subLabel: items[index]['subLabel'] ?? '',
                          onTap: () {
                            setState(() {
                              selectedIndex =
                                  index;
                            });
                            Future.delayed(const Duration(milliseconds: 300), () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailView(
                                    imageUrl: items[index]['image'] ?? '',
                                    label: items[index]['label'] ?? '',
                                    subLabel: items[index]['subLabel'] ?? '',
                                    index: index,
                                  ),
                                ),
                              ).then((_) {
                                setState(() {
                                  selectedIndex =
                                      null;
                                });
                              });
                            });
                          }, isSelected: selectedIndex == index,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}