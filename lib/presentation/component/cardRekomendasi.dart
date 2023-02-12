import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muzamproject/presentation/component/constant.dart';

class CardRekomendasi extends StatelessWidget {
  final String image;
  final String title;
  final String harga;
  final String terjual;
  final VoidCallback function;

  const CardRekomendasi({super.key, required this.image, required this.title,
    required this.harga, required this.terjual, required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  child: Image.asset(
                    image,
                    height: (MediaQuery.of(context).size.width / 2) - 70,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 12.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            harga,
                            style: TextStyle(
                                fontSize: 16.sp, color: biru1
                            ),
                          ),
                          Text(
                            "$terjual Terjual",
                            style: TextStyle(
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
