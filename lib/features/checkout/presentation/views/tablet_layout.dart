import 'package:flutter/material.dart';




class TabletLayout extends StatelessWidget {
  const TabletLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    return  CustomScrollView(
      slivers: [

      ],
    );
  }
}

