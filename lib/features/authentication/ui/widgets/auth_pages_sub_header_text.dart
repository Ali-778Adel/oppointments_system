import 'package:flutter/material.dart';

class AuthPagesSubHeaderText extends StatelessWidget {
  final String subHeaderText;
  final double ?spaceLetter;
  final double ?textHeight;
  const AuthPagesSubHeaderText({super.key,required this.subHeaderText,this.spaceLetter,this.textHeight});

  const AuthPagesSubHeaderText.copyWith({super.key,required this.subHeaderText,this.spaceLetter,this.textHeight});

  @override
  Widget build(BuildContext context) {
    return Text(subHeaderText,style: Theme.of(context).textTheme.displaySmall?.copyWith(
      letterSpacing: spaceLetter,
      height: textHeight
    ),);
  }
}
