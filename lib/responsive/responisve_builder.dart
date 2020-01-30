import 'package:flutter/material.dart';
import 'package:fruit/responsive/sizing_information.dart';
import 'package:fruit/utils/ui_utils.dart';

class ResponsiveBuilder extends StatelessWidget{
  final Widget Function(BuildContext context, SizingInformation sizingInformation) builder;
  const ResponsiveBuilder({Key key, this.builder}): super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context,boxConstraints){
      var sizingInformation = SizingInformation(
        deviceScreenType: getDeviceType(mediaQuery),
        screenSize:  mediaQuery.size,
        localWidgetSize: new Size(boxConstraints.maxWidth, boxConstraints.maxHeight)
      );
      return builder(context,sizingInformation);
    },);
  }

}