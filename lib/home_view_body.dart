import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'adaptive_layout_builder.dart';
import 'features/checkout/presentation/views/desktop_layout.dart';
import 'features/checkout/presentation/views/mobile_layout.dart';
import 'features/checkout/presentation/views/tablet_layout.dart';



class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   AdaptiveLayoutBuilder(
      mobileLayout: (BuildContext context) {return const MobileLayout(); },
      tabletLayout: (BuildContext context) {return const TabletLayout() ; },
      desktopLayout: (BuildContext context) {return const DesktopLayout() ; },);
  }
}






