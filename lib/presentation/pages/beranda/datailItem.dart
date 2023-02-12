
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muzamproject/model/model.dart';
import 'package:muzamproject/presentation/component/constant.dart';

class DetailItem extends StatelessWidget {
  final ModelData modelData;
  const DetailItem({Key? key, required this.modelData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        'Detail',
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
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
      top: false,
      left: false,
      right: false,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: height/3,
              child: Image.asset(modelData.image),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              child: Column(
                children: [
                  Container(
                    alignment: const Alignment(-1.0, -1.0),
                    child: Padding(
                      padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
                      child: Text(
                        modelData.title,
                        style: TextStyle(color: neutral100, fontSize: 24.sp,
                            fontWeight:
                        FontWeight.w600),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 25.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10.w),
                              child: Text(
                                modelData.harga,
                                style: TextStyle(
                                  color: biru1,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                      alignment: const Alignment(-1.0, -1.0),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: Text(
                          modelData.deskripsi,
                          style: TextStyle(color: neutral100, fontSize:
                          16.sp),
                        ),
                      )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}