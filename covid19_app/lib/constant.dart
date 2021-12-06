import 'package:flutter/material.dart';

// Colors
const kColorBackGround = Color(0xFFFFFFFF); //White
const kColorTextColor = Color(0xFF212121); //Black
const kColorShadowColor = Color(0xFFE3E3E3);
const kColorPrimaryColor = Color(0xFF29B6F6);
const kColorRed = Color(0xFFEF5350);
const kColorYellow = Color(0xFFFFC400);
const kColorGreen = Color(0xFF4CAF50);

// Font Size
//Tiêu đề thanh NavBar
const kTextTitle = TextStyle(
  color: kColorTextColor,
  fontSize: 18,
  fontWeight: FontWeight.w600,
  fontFamily: 'Roboto',
);
//Tiêu đề Nội dung
const kTextHeading = TextStyle(
  color: kColorTextColor,
  fontSize: 24,
  fontWeight: FontWeight.w600,
  fontFamily: 'Roboto',
);
//Nội dung
const kTextContent = TextStyle(
  color: kColorTextColor,
  fontSize: 18,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
);
//Nội dung con
const kTextSubContent = TextStyle(
  color: kColorTextColor,
  fontSize: 14,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
);
//Nội dung mini
const kTextSmallContent = TextStyle(
  color: kColorTextColor,
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
  BoxShadow(offset: Offset(0, 0), blurRadius: 20, color: kColorShadowColor)
];
// Bóng của thanh NavBar
const kNavShadow = [
  BoxShadow(offset: Offset(0, 2), blurRadius: 20, color: kColorShadowColor)
];
// Bóng của thanh Bottom Bar
const kBottomShadow = [
  BoxShadow(offset: Offset(0, -4), blurRadius: 20, color: kColorShadowColor)
];

// Padding
// Padding khung chứa - Padding container ở ngoài cùng
const kContainerPadding = EdgeInsets.all(20);
// Padding - Padding Item bên trong
const kItemPadding = EdgeInsets.all(15);

// Item space
// Khoảng cách giữa 2 item - Dùng SizedBox
const kItemSpace = 20;
