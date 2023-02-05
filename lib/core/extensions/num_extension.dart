import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

extension NumExtensionX on num {
  Duration get microseconds => Duration(microseconds: toInt());

  Duration get milliseconds => Duration(milliseconds: toInt());

  Duration get seconds => Duration(seconds: toInt());

  Duration get minutes => Duration(minutes: toInt());

  Duration get hours => Duration(hours: toInt());

  Duration get days => Duration(days: toInt());

  Future get delayedMicroSeconds async => Future.delayed(toInt().microseconds);

  Future get delayedMilliSeconds async => Future.delayed(toInt().milliseconds);

  Future get delayedSeconds async => Future.delayed(toInt().seconds);

  Future get delayedMinutes async => Future.delayed(toInt().minutes);

  Future get delayedHours async => Future.delayed(toInt().hours);

  Radius get circular => Radius.circular(toDouble().r);

  BorderRadiusGeometry get rounded => BorderRadius.circular(toDouble().r);

  EdgeInsets get all => EdgeInsets.all(toDouble().r);

  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: toDouble().w);

  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: toDouble().h);

  String get timeLeft {
    num h, m, s;

    h = this ~/ 3600;
    m = ((this - h * 3600)) ~/ 60;
    s = this - (h * 3600) - (m * 60);
    String min = m.toString(), sec = s.toString();
    if (m.toString().length == 1) {
      min = '0$m';
    }
    if (s.toString().length == 1) {
      sec = '0$s';
    }
    String result = '$min:$sec';
    return result;
  }
}
