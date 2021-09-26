import 'package:english_app/pages/home_page.dart';
import 'package:english_app/values/app_assets.dart';
import 'package:english_app/values/app_colors.dart';
import 'package:english_app/values/app_styles.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome to',
                  style: AppStyles.h3,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'English',
                      style: AppStyles.h2.copyWith(
                          color: AppColors.blackGrey,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'Qoutes"',
                        style: AppStyles.h4.copyWith(height: 0.5),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 80),
                  child: RawMaterialButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (_) => HomePage(),), (
                              route) => false);
                      //Navigator.push(context,
                      //  MaterialPageRoute(builder: (context) => HomePage(),));
                    },
                    child: Image.asset(AppAssets.rightArrow),
                    shape: CircleBorder(),
                    fillColor: AppColors.lightBlue,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
