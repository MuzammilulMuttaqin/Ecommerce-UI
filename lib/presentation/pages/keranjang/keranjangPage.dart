
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muzamproject/presentation/component/constant.dart';
import 'package:muzamproject/presentation/component/dummyData.dart';
import 'package:muzamproject/presentation/pages/beranda/datailItem.dart';

class KeranjangPage extends StatefulWidget {
  const KeranjangPage({Key? key}) : super(key: key);


  @override
  _KeranjangPageState createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _appBar(),
        body: _body(context)
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        'Keranjang',
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
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
          child: Text("${dataFlashSale.length} DI KERANJANG", textDirection: 
          TextDirection.ltr, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        Flexible(
          child: ListView.builder(
              itemCount: dataFlashSale.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key(UniqueKey().toString()),
                  onDismissed: (direction) {
                    if(direction == DismissDirection.endToStart) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${dataFlashSale[index].title} dismissed"), duration: const Duration(seconds: 1)));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${dataFlashSale[index].title} added to carts"), duration: const Duration(seconds: 1)));
                    }
                    setState(() {
                      dataFlashSale.removeAt(index);
                    });
                  },
                  background: Container(
                    decoration: const BoxDecoration(color: biru1),
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: const Icon(Icons.delete, color: neutral10),
                        ),
                      ],
                    ),
                  ),
                  secondaryBackground: Container(
                    decoration: const BoxDecoration(color: biru1),
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20.w),
                          child: const Icon(Icons.delete, color: neutral10),
                        ),
                      ],
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) =>
                              DetailItem(modelData: dataFlashSale[index])
                      )
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 90.h,
                            width: 90.w,
                            child: Image.asset(dataFlashSale[index].image),
                          ),
                          SizedBox(width: 10.w),
                          SizedBox(
                            height: 50.h,
                            width: 200.w,
                            child: Center(
                              child: Text(
                                dataFlashSale[index].title,
                                style: TextStyle(
                                    fontSize: 14.sp
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                );
              }),
        ),
      ],
    );
  }
}
