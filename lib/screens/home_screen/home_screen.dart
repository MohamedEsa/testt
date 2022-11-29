import 'package:flutter/material.dart';

import 'package:foodapp/utils/colors/color_manager.dart';
import 'package:foodapp/utils/size/font_size.dart';
import 'package:foodapp/utils/size/padding_manager.dart';
import 'package:foodapp/utils/size/size_manager.dart';
import 'package:foodapp/utils/strings/strings.dart';
import 'package:foodapp/widgets/buttons.dart';

import '../../widgets/card.dart';
import '../../widgets/text_form_field.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  String imageUrl =
      "https://img.freepik.com/free-photo/appetizing-kofta-kebab-meatballs-with-sauce-tortillas-tacos-black-table_2829-7883.jpg?w=900&t=st=1668162866~exp=1668163466~hmac=5ffde6d536c1e2ee4b323e8e6846a1d3108ee59b92cfc7ff0eb9763b38a18942";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: <Widget>[
            //---------- FormFiles Search ----------//
            SliverAppBar(
              backgroundColor: Colors.white,
              title: textFormCusotm(
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorManager.grey,
                ),
              ),
            ),
            //---------- Sized Box  ----------//
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 15.0,
              ),
            ),
            //----------  List Horizontal 1----------//
            SliverToBoxAdapter(
              child: Container(
                height: 150.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 90,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 250.0,
                      decoration: BoxDecoration(),
                      child: Card(
                        child: Image(
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            //---------- Sized Box  ----------//
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 15.0,
              ),
            ),
            //---------- Text food category  ----------//
            const SliverToBoxAdapter(
                child: Text(
              StringManager.foodCategories,
              style: TextStyle(
                  color: ColorManager.darkBlue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ))
            //---------- Sized Box  ----------//
            ,
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 15.0,
              ),
            ),
            //----------  List Horizontal 2----------//
            SliverToBoxAdapter(
              child: Container(
                height: 130.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 90,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 90.0,
                      child: Column(
                        children: [
                          Card(
                            child: Image(
                              width: 90.0,
                              height: 100.0,
                              image: NetworkImage(imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text('food type')
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),

            //---------- Sized Box  ----------//
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 15.0,
              ),
            ),
            //---------- Text food offer for you  ----------//
            const SliverToBoxAdapter(
                child: Text(
              StringManager.offerText,
              style: TextStyle(
                  color: ColorManager.darkBlue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            )),
            //---------- Sized Box  ----------//
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 15.0,
              ),
            ),
            //----------  List Horizontal 3----------//
            SliverToBoxAdapter(
              child: Container(
                height: 150.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 90,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 250.0,
                      decoration: BoxDecoration(),
                      child: Card(
                        child: Image(
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            //---------- Sized Box  ----------//
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 15.0,
              ),
            ),
            //---------- Text food offer for you  ----------//
            const SliverToBoxAdapter(
                child: Text(
              StringManager.reasturantNearText,
              style: TextStyle(
                  color: ColorManager.darkBlue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            )),
            //---------- Sized Box  ----------//
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 15.0,
              ),
            ),
            //----------  List Horizontal 3----------//
            SliverToBoxAdapter(
              child: LimitedBox(
                maxHeight: 200.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  // scrollDirection: Axis.horizontal,
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(),
                      child: Card(
                        child: Image(
                          height: 250.0,
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
