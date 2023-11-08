import 'package:flutter/material.dart';
import 'package:food_app/home/food_page_body.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/small_text.dart';

class MainFoodPage extends StatelessWidget {
  const MainFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            child: Container(
          margin: EdgeInsets.only(top: 45, bottom: 15),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  BigText(text: "INDIA", color: AppColors.mainColor),
                  Row(
                    children: [
                      SmallText(
                        text: "Delhi",
                        color: Colors.black54,
                      ),
                      Icon(
                        Icons.arrow_drop_down_rounded,
                      )
                    ],
                  )
                ],
              ),
              Center(
                child: Container(
                  width: 45,
                  height: 45,
                  child: Icon(Icons.search, color: Colors.white),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.mainColor),
                ),
              )
            ],
          ),
        )),
        FoodPageBody()
      ],
    ));
  }
}
