import 'package:flutter/widgets.dart';
import 'package:fruit/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery){

  double deviceWidth = mediaQuery.size.shortestSide;

  if(deviceWidth > 900){
    return DeviceScreenType.Desktop;
  }
  if(deviceWidth <=900 && deviceWidth > 600 ){
    return DeviceScreenType.Tablet;
  }
  
  return DeviceScreenType.Mobile;

}
