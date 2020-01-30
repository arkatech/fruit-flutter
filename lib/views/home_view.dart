import 'package:flutter/material.dart';
import 'package:fruit/responsive/orientation_layout.dart';
import 'package:fruit/responsive/screen_type_layout.dart';

import 'mobile/Home/mobile_home_portrait.dart';

class HomeView extends StatelessWidget{
  const HomeView({Key key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
          portrait: MobileHomePortrait(),
      ),
    );
  }

}