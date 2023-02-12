import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muzamproject/presentation/component/constant.dart';

Widget carouselSlideFirst(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      gradient: gradient,
      borderRadius: BorderRadius.circular(4.r),
    ),
    child: Stack(
      children: [
        Positioned(
          left: 28.w,
          top: 30.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 14.h),
              Text(
                'Buruan Checkout',
                style: TextStyle(
                  color: neutral10,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "Kemudahan berbelanja apa aja setiap hari",
                style: TextStyle(
                  color: neutral10,
                  fontSize: 10.sp,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Container carouselSlideSecond() {
  return Container(
    decoration: BoxDecoration(
      gradient: gradient,
      borderRadius: BorderRadius.circular(4.r),
    ),
    child: Stack(
      children: [
        Positioned(
          left: 28.w,
          top: 30.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 14.h),
              Text(
                'Kepoin',
                style: TextStyle(
                  color: neutral10,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "Semua Produk di Aplikasi\nterjamin asli dan awet dengan kualitas terbaik",
                style: TextStyle(
                  color: neutral10,
                  fontSize: 10.sp,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Container carouselSlideThird() {
  return Container(
    decoration: BoxDecoration(
      gradient: gradient,
      borderRadius: BorderRadius.circular(4.r),
    ),
    child: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Positioned(
          left: 30.w,
          top: 30.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Diskon Up to 70%',
                style: TextStyle(
                  color: neutral10,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "Dapatkan harga terbaik\nsetiap pembelian menggunakan e money"
                    " di aplikasi",
                style: TextStyle(
                  color: neutral10,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}