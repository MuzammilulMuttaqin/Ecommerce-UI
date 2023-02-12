import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muzamproject/presentation/component/constant.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: _body(context),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        'Profile',
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.sp),
      ),
      flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: gradient,
          )),
      centerTitle: true,
      elevation: 0,
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30.h),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            color: biru1,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/image_default_profile.png',
                    width: 80.w,
                    height: 80.w,
                    // fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Muzammilul Muttaqin",
                      style: TextStyle(
                          color: neutral10, fontWeight: FontWeight.w700,
                          fontSize: 14.sp),
                    ),
                  )
                ],
              ),
            ),
          ),
          _cardAttribute(
            30.h,
            "assets/email.png",
            "Email",
            "muzammilulmuttaqin11@gmail.com"
          ),
          _cardAttribute(
            12.h,
            "assets/perguruan_tinggi.png",
            "Perguruan Tinggi",
            "Institut Sains Dan Teknologi Annuqayah",
          ),
          _cardAttribute(
            12.h,
            "assets/prodi.png",
            "Program Studi",
            "Teknologi Informasi",
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }

  Widget _cardAttribute(
      double marginTop, String image, String title, String value) {
    return Card(
      margin: EdgeInsets.only(top: marginTop, left: 16.w, right: 16.w),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 24.w,
              height: 24.w,
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: neutral30,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      value,
                      style: TextStyle(
                          color: neutral50,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp),
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}

