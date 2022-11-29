import 'package:flutter/material.dart';
import 'package:foodapp/utils/colors/color_manager.dart';

import '../utils/size/size_manager.dart';

Widget customCardList({
  String imageUrl = '',
  double listWidth = 250.0,
  Axis scrollDirection = Axis.vertical,
  Color? cardColor,
  int? index,
  int itemCount = 0,
  double? imageHeight,
  double? imageWidth,
  bool isImage = true,
  bool isTextAbove = false,
  bool isLocation = false,
  bool isFoodType = false,
  bool axis = false,
  bool isScrollable = true,
  double padding = 0.0,
  double cardHeight = 60.0,
  double cardWidth = 100.0,
}) =>
    SizedBox(
      width: listWidth,
      child: ConstrainedBox(
        constraints: BoxConstraints(),
        child: ListView.separated(
            shrinkWrap: true,
            physics: isScrollable ? null : NeverScrollableScrollPhysics(),
            scrollDirection: scrollDirection,
            itemBuilder: (BuildContext context, index) => Container(
                  width: cardWidth,
                  height: cardHeight,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(SizeManager.s16),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(padding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        isTextAbove
                            ? Row(
                                children: [
                                  Icon(Icons.food_bank_outlined),
                                  SizedBox(
                                    width: SizeManager.s10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'resturnt naaaammmmee',
                                        style: TextStyle(
                                            color: ColorManager.darkBlue),
                                      ),
                                      Text('190 people rated',
                                          style: TextStyle(
                                              color: ColorManager.grey)),
                                    ],
                                  ),
                                  SizedBox(
                                    width: SizeManager.s10,
                                  ),
                                  Text('4.0',
                                      style: TextStyle(
                                          color: ColorManager.darkOrange)),
                                  Icon(
                                    Icons.star,
                                    size: 15.0,
                                    color: ColorManager.darkOrange,
                                  ),
                                ],
                              )
                            : Container(),
                        isImage
                            ? Container(
                                height: imageHeight,
                                width: imageWidth,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(SizeManager.s16),
                                ),
                                child: Image(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(imageUrl),
                                ),
                              )
                            : Container(),
                        SizedBox(
                          height: SizeManager.s16,
                        ),
                        isLocation
                            ? Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 15.0,
                                    color: ColorManager.darkOrange,
                                  ),
                                  SizedBox(
                                    width: SizeManager.s10,
                                  ),
                                  Text('7 st behry kjskkskjs',
                                      style:
                                          TextStyle(color: ColorManager.grey)),
                                ],
                              )
                            : Container(),
                        isFoodType
                            ? Center(child: Text('Food Type'))
                            : Container()
                      ],
                    ),
                  ),
                ),
            itemCount: itemCount,
            separatorBuilder: (BuildContext context, int index) => axis
                ? SizedBox(
                    height: SizeManager.s14,
                  )
                : SizedBox(
                    width: SizeManager.s10,
                  )),
      ),
    );
