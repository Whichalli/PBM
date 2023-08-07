import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray5001 = fromHex('#f7f9fc');

  static Color gray5002 = fromHex('#f0fdfa');

  static Color gray5003 = fromHex('#f5f3ff');

  static Color whiteA70090 = fromHex('#90ffffff');

  static Color gray80001 = fromHex('#3a4e39');

  static Color greenA100 = fromHex('#afe8ca');

  static Color black9003f = fromHex('#3f000000');

  static Color lightBlue4002d = fromHex('#2d1face8');

  static Color pinkA100 = fromHex('#ff69b4');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color black90001 = fromHex('#000000');

  static Color greenA700 = fromHex('#1ec760');

  static Color black90000 = fromHex('#00000000');

  static Color pinkA700 = fromHex('#c8116d');

  static Color blueGray90002 = fromHex('#2d344b');

  static Color lightBlueA700 = fromHex('#0089ff');

  static Color blueGray90001 = fromHex('#21283f');

  static Color blueGray700 = fromHex('#52525b');

  static Color blueGray900 = fromHex('#333333');

  static Color gray40099 = fromHex('#99b1b1b1');

  static Color black90003 = fromHex('#000000');

  static Color black90002 = fromHex('#030303');

  static Color yellow200 = fromHex('#fce89c');

  static Color gray600 = fromHex('#7f7f7f');

  static Color whiteA7004c = fromHex('#4cffffff');

  static Color pink50 = fromHex('#ffd8f4');

  static Color black900C4 = fromHex('#c4000000');

  static Color black9000a = fromHex('#0a000000');

  static Color blueGray100 = fromHex('#cecece');

  static Color orangeA200 = fromHex('#ff9c41');

  static Color blueGray300 = fromHex('#8f9bb3');

  static Color gray800 = fromHex('#3a3a3a');

  static Color blueGray500 = fromHex('#677294');

  static Color yellow50 = fromHex('#fefce8');

  static Color gray200 = fromHex('#f0f0f0');

  static Color whiteA70061 = fromHex('#61ffffff');

  static Color blue50 = fromHex('#d8e8fb');

  static Color gray9009b = fromHex('#9b141927');

  static Color black90099 = fromHex('#99000000');

  static Color gray10001 = fromHex('#f4f4f5');

  static Color whiteA70068 = fromHex('#68ffffff');

  static Color black90019 = fromHex('#19000000');

  static Color blueGray40002 = fromHex('#888888');

  static Color blueGray40001 = fromHex('#8992a3');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black90059 = fromHex('#59000000');

  static Color lightBlueA70089 = fromHex('#890088ff');

  static Color blueGray50 = fromHex('#edf1f7');

  static Color lightBlueA400 = fromHex('#00b0ff');

  static Color blueGray10001 = fromHex('#d0d0d0');

  static Color yellow5001 = fromHex('#fff7ed');

  static Color indigoA200 = fromHex('#4870ff');

  static Color gray50 = fromHex('#f3f8ff');

  static Color greenA400 = fromHex('#00d971');

  static Color red50 = fromHex('#fef2f2');

  static Color pink5001 = fromHex('#ffe6ed');

  static Color black900 = fromHex('#010101');

  static Color blueGray30061 = fromHex('#618f9bb3');

  static Color gray50001 = fromHex('#a1a1aa');

  static Color blue5002 = fromHex('#eaf8ff');

  static Color blue5001 = fromHex('#e8f5ff');

  static Color pink400 = fromHex('#f74077');

  static Color black90026 = fromHex('#26000000');

  static Color gray90002 = fromHex('#1f1f1f');

  static Color gray90003 = fromHex('#18181b');

  static Color pinkA10019 = fromHex('#19ff69b4');

  static Color gray60002 = fromHex('#757575');

  static Color gray60001 = fromHex('#7c7c7c');

  static Color gray500 = fromHex('#9e9e9e');

  static Color blueGray400 = fromHex('#8e8e93');

  static Color blueGray90004 = fromHex('#2d2e2e');

  static Color gray900 = fromHex('#131313');

  static Color blueGray90003 = fromHex('#222b45');

  static Color gray90001 = fromHex('#212121');

  static Color gray300 = fromHex('#e6e6e6');

  static Color gray30002 = fromHex('#e4e4e7');

  static Color gray30001 = fromHex('#e2e2e2');

  static Color gray100 = fromHex('#f6f6f6');

  static Color orange50 = fromHex('#ffe9dd');

  static Color indigo100 = fromHex('#c5cee0');

  static Color black90033 = fromHex('#33000000');

  static Color whiteA70001 = fromHex('#fefefe');

  static Color blue400 = fromHex('#32a4fb');

  static Color indigo5099 = fromHex('#99ebebf5');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
