
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muzamproject/presentation/component/constant.dart';
import 'package:muzamproject/presentation/pages/beranda/berandaPage.dart';
import 'package:muzamproject/presentation/pages/keranjang/keranjangPage.dart';
import 'package:muzamproject/presentation/pages/notifikasi/notifikasiPage.dart';
import 'package:muzamproject/presentation/pages/profile/profilePage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);


  @override
  _MainPageState createState() => _MainPageState();

}

enum NavBarMenu {Beranda, Keranjang, Notifikasi, Profile}

class _MainPageState extends State<MainPage> {
  NavBarMenu navBarMenu = NavBarMenu.Beranda;

  PageController pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Flexible(
              flex: 9,
              child: SizedBox(
                width: double.infinity,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: 4,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return _switchPage(
                      index,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          elevation: 25,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(
            color: neutral20,
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
          ),
          selectedLabelStyle: TextStyle(
            color: biru1,
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
          ),
          unselectedItemColor: neutral20,
          selectedItemColor: biru1,
          iconSize: 24.r,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 250),
                curve: Curves.ease,
              );
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: const ImageIcon(AssetImage("assets/beranda.png")),
              ),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: const ImageIcon(AssetImage("assets/keranjang.png")),
              ),
              label: "Keranjang",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: const ImageIcon(AssetImage("assets/notifikasi.png")),
              ),
              label: "Notifikasi",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child:
                const ImageIcon(AssetImage("assets/profil.png")),
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}


dynamic _switchPage(int index) {
  switch (index) {
    case 0:
      return const BerandaPage();
    case 1:
      return const KeranjangPage();
    case 2:
      return const NotifikasiPage();
    case 3:
      return const ProfilePage();
    default:
  }
}
