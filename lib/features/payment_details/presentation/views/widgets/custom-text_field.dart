import 'package:flutter/material.dart';

import '../../../../../core/utilis/styles.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({
    super.key,
     this.hintText,
     this.onChanged,
     required this.title,

  });

  final String? hintText;
  final Function(String)? onChanged;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: TextFormField(

        validator: (value){
          if(value!.isEmpty){
            return 'field is required';
          }
        },
        onChanged: onChanged,
        decoration: InputDecoration(
          label: Text(title,style: Styles.regular18(context),),
          hintText: hintText,
          hintStyle: Styles.regular18(context)
        ),
      ),
    );
  }
}