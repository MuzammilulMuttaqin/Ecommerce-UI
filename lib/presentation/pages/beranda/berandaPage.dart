import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muzamproject/presentation/component/corouselSlides.dart';
import 'package:muzamproject/presentation/pages/beranda/konten.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../component/constant.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  _BerandaPageState createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            _topSection(context),
            konten(context),
          ],
        ),
      ),
    );
  }

  Widget _topSection(BuildContext context) {
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      color: Colors.white,
      height: height/3,
      width: double.infinity,
      child: Stack(
        children: [
          _corouselSlide(),
          Positioned(
            top: 130.h,
              right: 150.w,
              left: 150.w,
              child: _sliderCircle()
          ),
          Positioned(
              top: 150.h,
              right: 0.w,
              left: 0.w,
              child: _cardSaldo(context)
          ),
        ],
      ),
    );
  }
  Widget _corouselSlide(){
    final List<Widget> carouselSlides = [
      carouselSlideFirst(context),
      carouselSlideSecond(),
      carouselSlideThird(),
    ];
    return CarouselSlider(
      items: carouselSlides,
      options: CarouselOptions(
        height: 160.h,
        enableInfiniteScroll: true,
        autoPlay: true,
        pauseAutoPlayOnTouch: true,
        viewportFraction: 1.0,
        autoPlayCurve: Curves.linearToEaseOut,
        onPageChanged: (index, reason) {
          setState(() {
            current = index;
          });
        },
      ),
    );
  }

  Widget _cardSaldo(BuildContext context){
    const verticalDivider = VerticalDivider(
      indent: 5,
      endIndent: 5,
      thickness: 1.5,
      width: 24,
      color: neutral10,
    );
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: neutral50.withOpacity(0.5),
            spreadRadius: 0.2,
            blurRadius: 7,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            SizedBox(width: 2.w),
            Expanded(
              child: Image.asset(
                "assets/scan.png",
                height: 30.h,
                color: neutralCaption,
              ),
            ),
            verticalDivider,
            _content(
                image:
                "assets/saldo.png",
                title: "Rp3.199.000",
                subTitle: "Saldo",
                isCoin: true),
            verticalDivider,
            _content(
              image:
              "assets/koin.png",
              title: "2.000",
              color: Colors.amber,
              subTitle: "Koin Saya",
              isCoin: true,
            ),
          ],
        ),
      ),
    );
  }
  Expanded _content({
    String? image,
    String? title,
    String? subTitle,
    Color? color,
    bool isCoin = false,
  }) {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 28.h,
            child: Row(
              children: [
                Image.asset(
                  image!,
                  height: 16.h,
                  color: color,
                ),
                SizedBox(width: 4.w),
                Text(
                  title!,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: neutral100,
                  ),
                ),
              ],
            ),
          ),
          Text(
            subTitle!,
            style: TextStyle(
              fontSize: 11.sp,
              color: neutralCaption,
            ),
            maxLines: 2,
          ),
        ],
      ),
    );
  }

  Widget _sliderCircle() {
    return AnimatedSmoothIndicator(
      activeIndex: current,
      count: 3,
      effect: SlideEffect(
        dotWidth: 24.w,
        dotHeight: 6.h,
        radius: 100.r,
        strokeWidth: 1.5,
        activeDotColor: Colors.white,
        dotColor: biru1,
      ),
    );
  }
}