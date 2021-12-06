import 'package:flutter/material.dart';

// Colors
const kBackGround = Color(0xFFFFFFFF); //White
const kTextColor = Color(0xFF212121); //Black
const kShadowColor = Color(0xFFE3E3E3);
const kPrimaryColor = Color(0xFF29B6F6);
const kRed = Color(0xFFEF5350);
const kYellow = Color(0xFFFFC400);
const kGreen = Color(0xFF4CAF50);

// Font Size
//Tiêu đề thanh NavBar
const kTitle = TextStyle(
  color: kTextColor,
  fontSize: 18,
  fontWeight: FontWeight.w600,
  fontFamily: 'Roboto',
);
//Tiêu đề Nội dung
const kHeading = TextStyle(
  color: kTextColor,
  fontSize: 24,
  fontWeight: FontWeight.w600,
  fontFamily: 'Roboto',
);
//Nội dung
const kContent = TextStyle(
  color: kTextColor,
  fontSize: 18,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
);
//Nội dung con
const kSubContent = TextStyle(
  color: kTextColor,
  fontSize: 14,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
);
//Nội dung mini
const kSmallContent = TextStyle(
  color: kTextColor,
  fontSize: 12,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
);

//Icons
const kIconNormalSize = 24;
const kIconLargeSize = 36;

// Border Radius
// Viền khối
var kBorderRadius = BorderRadius.circular(20);
// Hình tròn
var kCircleRadius = BorderRadius.circular(100);
// Viền ảnh nhỏ nằm trong khối
const kCornerRadius = BorderRadius.only(
  topLeft: Radius.circular(20),
  bottomLeft: Radius.circular(20),
);

// Box Shadow
// Bóng của khối
const kBlockShadow = [
  BoxShadow(offset: Offset(0, 0), blurRadius: 20, color: kShadowColor)
];
// Bóng của thanh NavBar
const kNavShadow = [
  BoxShadow(offset: Offset(0, 2), blurRadius: 20, color: kShadowColor)
];
// Bóng của thanh Bottom Bar
const kBottomShadow = [
  BoxShadow(offset: Offset(0, -4), blurRadius: 20, color: kShadowColor)
];

// Padding
// Padding khung chứa - Padding container ở ngoài cùng
const kContainerPadding = EdgeInsets.all(20);
// Padding - Padding Item bên trong
const kItemPadding = EdgeInsets.all(15);

// Item space
// Khoảng cách giữa 2 item - Dùng SizedBox
const kItemSpace = 20;
