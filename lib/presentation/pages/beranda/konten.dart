import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muzamproject/presentation/component/cardFlashSale.dart';
import 'package:muzamproject/presentation/component/cardRekomendasi.dart';
import 'package:muzamproject/presentation/component/dummyData.dart';
import 'package:muzamproject/presentation/pages/beranda/datailItem.dart';
import 'package:slide_countdown/slide_countdown.dart';

Widget konten(BuildContext context){
  var size, height, width;
  size = MediaQuery.of(context).size;
  height = size.height;
  width = size.width;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(top: 14.h, left: 8.w, right: 8.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "FLASH SALE",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700)),
            SizedBox(width: 10.w),
            const SlideCountdown(
              duration: Duration(days: 1),
            )
          ]
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 4.h),
        height: height/3,
        color: Colors.white,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          scrollDirection: Axis.horizontal,
          itemCount: dataFlashSale.length,
          itemBuilder: (BuildContext context, int index) {
            return CardFlashSale(
                image: gambarFlashSale[index],
                nama: namaFlashSale[index],
                harga: hargaFlashSale[index],
                terjual: terjualFlashSale[index],
                function: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) =>
                          DetailItem(modelData: dataFlashSale[index])
                  ),
                  );
            }
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(width: 8.w),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
            top: 8.h, left: 8.w, right: 8.w),
        child: Text('REKOMENDASI',
            style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 18,
                fontWeight: FontWeight.w700)),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            GridView.builder(
              padding: const EdgeInsets.all(6),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: dataRekomendasi.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.75,
                crossAxisCount: 2,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
              ),
              itemBuilder: (BuildContext context, int index) {
                return CardRekomendasi(
                  image: gambaritemRekomendasiKomputer[index],
                  title: namaitemRekomendasiKomputer[index],
                  harga: hargaItemRekomendasiKomputer[index],
                  terjual: terjualItemRekomendasiKomputer[index],
                  function: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) =>
                            DetailItem(modelData: dataRekomendasi[index])
                    ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 6.h, left: 8.w, right: 8.w, bottom: 10.h),
        child: const Image(
          fit: BoxFit.cover,
          image: AssetImage('assets/banner.png'),
        ),
      )
    ],
  );
}
