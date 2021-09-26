import 'package:english_app/values/app_assets.dart';
import 'package:english_app/values/app_colors.dart';
import 'package:english_app/values/app_fonts.dart';
import 'package:english_app/values/app_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; //Trả về vị trí hiện tại của card
  PageController _pageController = PageController();

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.9);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //Lấy Size màn hình (Chia tỉ lệ màn hình cho dễ)
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.secondColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondColor,
        //Ẩn đường viền ngăn cách AppBar
        elevation: 0,
        title: Text(
          'English today',
          style:
              AppStyles.h3.copyWith(color: AppColors.textColor, fontSize: 36),
        ),
        leading: InkWell(
          onTap: () {},
          child: Image.asset(AppAssets.menu),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                //1/10 màn hình
                height: size.height * (1 / 10),
                //padding: EdgeInsets.all(16),
                alignment: Alignment.centerLeft,
                child: Text(
                  '"It is amazing how complete is the delusion that beauty is goodness."',
                  style: AppStyles.h5.copyWith(
                    fontSize: 12,
                    color: AppColors.textColor,
                  ),
                )),
            Container(
              height: size.height * (2 / 3),
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(3,6),
                            blurRadius: 6,
                          )
                        ],
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset(AppAssets.heart),
                            //  padding: const EdgeInsets.fromLTRB(0, 16, 16, 16),
                            alignment: Alignment.centerRight,
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'B',
                                children: [
                                  TextSpan(
                                      text: 'eautiful',
                                      style: TextStyle(
                                          fontFamily: AppFonts.sen,
                                          fontSize: 62,
                                          fontWeight: FontWeight.bold,
                                          shadows: [
                                            BoxShadow(
                                              color: Colors.black38,
                                              offset: Offset(3, 6), //Đổ bóng
                                              blurRadius: 10, //Làm mờ, blur
                                            )
                                          ]))
                                ],
                                style: TextStyle(
                                    fontFamily: AppFonts.sen,
                                    fontSize: 89,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      BoxShadow(
                                        color: Colors.black38,
                                        offset: Offset(3, 6), //Đổ bóng
                                        blurRadius: 10, //Làm mờ, blur
                                      )
                                    ])),
                            maxLines: 1, //Cho chữ nằm trên 1 dòng,
                            overflow: TextOverflow
                                .ellipsis, //Phần còn lại thành dấu ...
                            textAlign: TextAlign.start,
                          ),
                          Container(
                            //padding: const EdgeInsets.all(16),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 24),
                              child: Text(
                                '"Think of all the beauty still left arround you and be happy."',
                                style: AppStyles.h4.copyWith(
                                  letterSpacing: 1, //Dãn chữ
                                  color: AppColors.textColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            //indicator
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                height: size.height * (1 / 13),
                child: Container(
                  height: 12,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 24),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    //Không cho listview cuộn
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return buildIndicator(index == _currentIndex, size);
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          print('Nhan');
        },
        child: Image.asset(AppAssets.exchange),
      ),
    );
  }

  Widget buildIndicator(bool isActive, Size size) {
    return Container(
      //height: 12,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: isActive ? size.width * (1 / 5) : 24,
      decoration: BoxDecoration(
          color: isActive ? AppColors.lightBlue : AppColors.lightGrey,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
                color: Colors.black38, offset: Offset(2, 3), blurRadius: 3)
          ]),
    );
  }
}
