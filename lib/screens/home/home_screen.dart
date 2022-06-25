import 'dart:ui';

import 'package:fashion_app/colors.dart';
import 'package:fashion_app/screens/detail/detailscreen.dart';
import 'package:fashion_app/screens/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'widgets/category_card.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhiteClr,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: _size.height * 0.5,
                  width: _size.width,
                  decoration: BoxDecoration(
                    color: kBlackClr,
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // appbar
                          const CustomAppbar(),
                          const SizedBox(
                            height: 20,
                          ),
                          //intro
                          const Text(
                            "Find the best\ncloths for you",
                            style: TextStyle(
                              color: kWhiteClr,
                              fontSize: 35,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          //searchbar
                          TextFormField(
                            style: const TextStyle(
                              color: kGreyClr,
                            ),
                            decoration: InputDecoration(
                              fillColor: kPrimaryClr,
                              filled: true,
                              hintText: "search",
                              hintStyle: const TextStyle(
                                color: kGreyClr,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          //category
                          Container(
                            height: 45,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Categorycard(
                                  active: true,
                                  title: 'For All',
                                  press: () {},
                                ),
                                Categorycard(
                                  active: false,
                                  title: 'For Men',
                                  press: () {},
                                ),
                                Categorycard(
                                  active: false,
                                  title: 'For Women',
                                  press: () {},
                                ),
                                Categorycard(
                                  active: false,
                                  title: 'Shirts Collection',
                                  press: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: _size.height * 0.45,
                    ),
                    Container(
                      width: _size.width,
                      decoration: const BoxDecoration(
                        color: kWhiteClr,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "New Collection",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            //now we will create model of our products

                            AlignedGridView.count(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemCount: productinfo.length,
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              itemBuilder: (context, index) => ProductCard(
                                  product: productinfo[index],
                                  press: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Detailscreen(
                                          product: productinfo[index],
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// now we will build detail screen