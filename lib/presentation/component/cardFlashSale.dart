
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muzamproject/presentation/component/constant.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CardFlashSale extends StatelessWidget {
  final String image;
  final String nama;
  final String harga;
  final String terjual;
  final VoidCallback function;
  final percent = 30 /70;

  const CardFlashSale({required this.image, required this.nama, required this.harga, required this.function, required this.terjual});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                image,
                height: 150.h,
                width: 150.w,
              ),
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: biru1,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Text(
                  "Mall",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 7.h),
          Text(
            harga,
            style: TextStyle(
              color: biru1,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 7.h),
          Stack(
            clipBehavior: Clip.none, children: [
            LinearPercentIndicator(
              center: Text(
                "$terjual TERJUAL",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                ),
              ),
              width: 130.w,
              lineHeight: 17.h,
              percent: percent,
              backgroundColor: neutral30,
              progressColor: biru1,
            ),
          ],
          )
        ],
      ),
    );
  }

}

