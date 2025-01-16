import 'package:flutter/cupertino.dart';
import 'package:uipractice/core/utilis/size_config.dart';

double getResponsiveFontSize(context,{required double fontSize}){
  double scaleFactor=getScaleFactor(context);
  double responsiveFontSize=fontSize*scaleFactor;

  double lowerLimit=fontSize*0.8;
  double upperLimit=fontSize*1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width=MediaQuery.of(context).size.width;
  if(width<SizeConfig.mobileBP){
    return width/450;
  }else if(width < SizeConfig.tabletBP ){
    return width/1000;
  }else{
    return width/1300;
  }
}