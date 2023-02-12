import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muzamproject/presentation/component/constant.dart';

class NotifikasiPage extends StatelessWidget{
  const NotifikasiPage({Key? key}) : super(key: key);

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
        'Notifikasi',
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

  Widget _body(BuildContext context){
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 170.h),
            Image.asset(
              'assets/tidak_ada_notifikasi.png',
              width: 271.w,
              height: 194.h,
            ),
            SizedBox(height: 20.h),
            Text(
                "Tidak ada Notifikasi",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black)
            )
          ],
        ),
      ),
    );
  }

}