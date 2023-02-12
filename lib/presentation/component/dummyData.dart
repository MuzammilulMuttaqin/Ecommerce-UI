
import 'package:flutter/material.dart';
import 'package:muzamproject/model/model.dart';

final List<String> gambaritemRekomendasiKomputer = [
  'assets/laptop_hp_envy.jpg',
  'assets/monitor_legion.jpg',

];

final List<String> namaitemRekomendasiKomputer = [
  'HP ENVY Laptop 13 Inch Gold 13-ba1032TX Intel i7-1165G7/512GB/16GB/Backlit/Full HD',
  'Lenovo Legion Y25-25 Gaming Monitor 24.5" FHD IPS AMD FreeSync Premium 240Hz 99% sRGB 66AAGAC6WW',
];

final List<String> hargaItemRekomendasiKomputer = [
  'Rp16.999.000',
  'Rp4.799.000',
];

final List<String> terjualItemRekomendasiKomputer = [
  '2',
  '7',
];

final List<String> deskripsiItemRekomendasiKomputer = [
  "Specifications"
      "\nOperating systemWindows 10 Home Single Language 64"
      "\nProcessor family11th Generation Intel® Core™ i7 processor"
      "\nProcessorIntel® Core™ i7-1165G7 (up to 4.7 GHz with Intel® Turbo"
      "\nBoost Technology, 12 MB L3 cache, 4 cores)6,7 DA key selling"
      "\npointWindows 10 Home or other operating systems available"
      "\nChipsetIntel® Integrated SoC"
      "\nSecurity managementAll-in-One keyboard"
      "\nMemory16 GB DDR4-2666 SDRAM (onboard)"
      "\nMemory layout (slots & size)Onboard"
      "\nInternal Storage512 GB PCIe® NVMe™ TLC SSD ",
  "Specification:"
      "\n- Display Size: 24.5"
      "\n- View Area: 543.74 × 302.62 mm"
      "\n- Panel:  In-Plane Switching (IPS) wide viewing angle panel"
      "\n- Aspect Ratio: 16:9"
      "\n- Resolution: 1920 x 1080"
      "\n- Speaker: None, compatible with Sound by Harman-Kardon Speaker (not"
      " included)",
];

final List<String> gambarFlashSale = [
  'assets/indomi.png',
  'assets/samsung_a03.jpg',
];

final List<String> namaFlashSale = [
  'INDOMIE GORENG 5 x 85GR PROMO MURAH',
  'Samsung Galaxy A03 3/32 4/64 4/128 RAM 3 4 ROM 32 64 128 GB Handphone Hp Smartphone Android Ponsel',
];

final List<String> hargaFlashSale = [
  'Rp2.199',
  'Rp1.399.000',
];

final List<String> terjualFlashSale = [
  '10',
  '7',
];

final List<String> deskripsiFlashSale = [
  'Indomie rendang9gr Diproduksi oleh PT Indofood sukses Makmur, BPOM RI MD 231509032002, dan kami Kasih selalu yg terbaru, dan exp dalam jangka waktu yg lama.',
  'Design'
  'Type : Bar'
  'Dimensions : 164.2 x 75.9 x 9.1 mm'
  'Waterproof : No'
  'Display'
  'Display Type : PLS IPS'
  'Size : 6.5 inches'
  'Resolution : 720 x 1600 pixels'
  'Display Colors : 16M'
  'Pixel Density : 270 PPI (pixels per inch)'
  'Touch Screen : Yes',
];
final List<ModelData> dataFlashSale = List.generate(gambarFlashSale.length, (index) =>
    ModelData(gambarFlashSale[index], namaFlashSale[index], hargaFlashSale[index],
        terjualFlashSale[index], deskripsiFlashSale[index]));
final List<ModelData> dataRekomendasi = List.generate(gambarFlashSale.length, (index) =>
    ModelData(gambaritemRekomendasiKomputer[index], namaitemRekomendasiKomputer[index],
        hargaItemRekomendasiKomputer[index],
        terjualItemRekomendasiKomputer[index], deskripsiItemRekomendasiKomputer[index]));

const COLOR_PRIMARY = Colors.deepOrangeAccent;
const COLOR_ACCENT = Colors.orange;

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: COLOR_PRIMARY,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: COLOR_ACCENT
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0)
            ),
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0))
            ),
            backgroundColor: MaterialStateProperty.all<Color>(COLOR_ACCENT)
        )
    ),
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide.none
        ),
        filled: true,
        fillColor: Colors.grey.withOpacity(0.1)
    )
);

ThemeData darkTheme = ThemeData(

  brightness: Brightness.dark,
  accentColor: Colors.white,
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all<Color>(Colors.grey),
    thumbColor: MaterialStateProperty.all<Color>(Colors.white),
  ),
  inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide.none
      ),
      filled: true,
      fillColor: Colors.grey.withOpacity(0.1)
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0)
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
              )
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
          overlayColor: MaterialStateProperty.all<Color>(Colors.black26)
      )
  ),
);