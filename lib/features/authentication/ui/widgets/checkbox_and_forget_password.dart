import 'package:flutter/material.dart';
import 'package:oppointments_sysytem/core/theming/colors/colors.dart';

class CheckBoxAndForgetPassword extends StatefulWidget {
  bool initialValue =false;
  CheckBoxAndForgetPassword({super.key,required this.initialValue});

  @override
  State<CheckBoxAndForgetPassword> createState() => _CheckBoxAndForgetPasswordState();
}

class _CheckBoxAndForgetPasswordState extends State<CheckBoxAndForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            side:const  BorderSide(color: ColorPalette.grey60),
            value: widget.initialValue,
            activeColor: ColorPalette.primary100,

            onChanged: (value){
          setState(() {
            widget.initialValue=value!;
          });
        }),
        Text("Remember me",style: Theme.of(context).textTheme.labelSmall?.copyWith(
          fontWeight: FontWeight.w400,
          color:ColorPalette.grey60,

        ),),
        const Spacer(),
        TextButton(onPressed: (){}, child: Text("Forget Password?",style: Theme.of(context).textTheme.labelSmall?.copyWith(
          fontWeight: FontWeight.w400,
          color:ColorPalette.primary100,

        ),))
      ],
    );
  }
}
