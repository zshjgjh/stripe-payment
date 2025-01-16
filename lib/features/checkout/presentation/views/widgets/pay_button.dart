import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utilis/app_routers.dart';
import '../../../../../core/utilis/styles.dart';

class PayButton extends StatelessWidget {
  const PayButton({
    super.key, required this.title, this.onPressed, this.isLoad=false,
  });

 final String title;
 final void Function()? onPressed;
 final bool isLoad;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor:const Color(0xFF012169),
          fixedSize:const Size(350, 63)
      ),
      child:isLoad?const Center(child: CircularProgressIndicator()):Text(title,style: Styles.semiBold24(context).copyWith(color:Colors.white),),
    );
  }
}