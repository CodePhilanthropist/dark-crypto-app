import 'package:flutter/material.dart';

Text smallFont({required String value, Color? color}) {
  return Text(
    value,
    style: TextStyle(
      fontFamily: "SF Pro Text",
      color: color ?? Colors.white,
      fontSize: 12,
    ),
  );
}

Text baseFont({required String value, Color? color}) {
  return Text(
    value,
    style: TextStyle(
      fontFamily: "SF Pro Text",
      color: color ?? Colors.white,
      fontSize: 14,
    ),
  );
}

Text mediumFont({required String value, Color? color}) {
  return Text(
    value,
    style: TextStyle(
      fontFamily: "SF Pro Text",
      color: color ?? Colors.white,
      fontSize: 16,
    ),
  );
}

Text largeFont({required String value, Color? color}) {
  return Text(
    value,
    style: TextStyle(
      fontFamily: "SF Pro Text",
      color: color ?? Colors.white,
      fontSize: 18,
    ),
  );
}

Text headingFont({required String value, Color? color}) {
  return Text(
    value,
    style: TextStyle(
      fontFamily: "SF Pro Text",
      color: color ?? Colors.white,
      fontSize: 24,
    ),
  );
}

Text bigFont({required String value, Color? color}) {
  return Text(
    value,
    style: TextStyle(
      fontFamily: "SF Pro Text",
      color: color ?? Colors.white,
      fontSize: 32,
    ),
  );
}
