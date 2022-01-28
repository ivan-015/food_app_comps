import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:food_app_comps/controller/tag/item_quantity_custom.dart';
import 'package:food_app_comps/controller/tag/minus_button_custom.dart';
import 'package:food_app_comps/controller/tag/plus_button_custom.dart';

class Foodcard extends StatelessWidget {
  final constraints;
  final String? ovrRestaurantname;
  final String? ovrFoodname;
  final String? ovr999;
  const Foodcard(
    this.constraints, {
    Key? key,
    this.ovrRestaurantname,
    this.ovrFoodname,
    this.ovr999,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        left: 0,
        width: constraints.maxWidth * 1.0,
        top: 0,
        height: constraints.maxHeight * 1.0,
        child: Container(
          width: constraints.maxWidth * 1.000,
          height: constraints.maxHeight * 1.000,
          decoration: BoxDecoration(
            color: Color(0xffede9e3),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
      Positioned(
        left: constraints.maxWidth * 0.029,
        width: constraints.maxWidth * 0.218,
        top: constraints.maxHeight * 0.08,
        height: constraints.maxHeight * 0.841,
        child: Image.asset(
          'assets/images/1_4.png',
          width: constraints.maxWidth * 0.218,
          height: constraints.maxHeight * 0.841,
          fit: BoxFit.fill,
        ),
      ),
      Positioned(
        left: constraints.maxWidth * 0.31,
        width: constraints.maxWidth * 0.345,
        top: constraints.maxHeight * 0.08,
        height: constraints.maxHeight * 0.205,
        child: Center(
            child: Container(
                width: constraints.maxWidth * 0.345,
                height: constraints.maxHeight * 0.205,
                child: AutoSizeText(
                  ovrRestaurantname ?? 'Restaurant name',
                  style: TextStyle(
                    fontFamily: 'Sanchez',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ))),
      ),
      Positioned(
        left: constraints.maxWidth * 0.758,
        width: constraints.maxWidth * 0.204,
        top: constraints.maxHeight * 0.386,
        height: constraints.maxHeight * 0.227,
        child: Stack(children: [
          Positioned(
            left: 0,
            width: constraints.maxWidth * 0.204,
            top: 0,
            height: constraints.maxHeight * 0.227,
            child: Container(
              width: constraints.maxWidth * 0.204,
              height: constraints.maxHeight * 0.227,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
            ),
          ),
          Positioned(
            left: constraints.maxWidth * 0.091,
            width: constraints.maxWidth * 0.024,
            top: constraints.maxHeight * 0.011,
            height: constraints.maxHeight * 0.205,
            child: Center(
                child: Container(
                    height: 18.0,
                    child: ItemQuantityCustom(
                        child: AutoSizeText(
                      '1',
                      style: TextStyle(
                        fontFamily: 'Sanchez',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    )))),
          ),
          Positioned(
            left: 0,
            width: 20.0,
            top: 0,
            height: constraints.maxHeight * 0.227,
            child: Center(
                child: Container(
                    height: 20.0,
                    child: MinusButtonCustom(
                        child: Image.asset(
                      'assets/images/1_13.png',
                      width: constraints.maxWidth * 0.059,
                      height: constraints.maxHeight * 0.227,
                      fit: BoxFit.none,
                    )))),
          ),
          Positioned(
            right: 0,
            width: 20.0,
            top: 0,
            height: constraints.maxHeight * 0.227,
            child: Center(
                child: Container(
                    height: 20.0,
                    child: PlusButtonCustom(
                        child: Image.asset(
                      'assets/images/1_16.png',
                      width: constraints.maxWidth * 0.059,
                      height: constraints.maxHeight * 0.227,
                      fit: BoxFit.none,
                    )))),
          ),
        ]),
      ),
      Positioned(
        left: constraints.maxWidth * 0.31,
        width: constraints.maxWidth * 0.218,
        top: constraints.maxHeight * 0.352,
        height: constraints.maxHeight * 0.205,
        child: Center(
            child: Container(
                width: constraints.maxWidth * 0.218,
                height: constraints.maxHeight * 0.205,
                child: AutoSizeText(
                  ovrFoodname ?? 'Food name',
                  style: TextStyle(
                    fontFamily: 'Sanchez',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                    color: Color(0xff6b6b6b),
                  ),
                  textAlign: TextAlign.left,
                ))),
      ),
      Positioned(
        left: constraints.maxWidth * 0.31,
        width: constraints.maxWidth * 0.345,
        top: constraints.maxHeight * 0.625,
        height: constraints.maxHeight * 0.205,
        child: Center(
            child: Container(
                width: constraints.maxWidth * 0.345,
                height: constraints.maxHeight * 0.205,
                child: AutoSizeText(
                  ovr999 ?? '\$9.99',
                  style: TextStyle(
                    fontFamily: 'Sanchez',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ))),
      ),
    ]);
  }
}
