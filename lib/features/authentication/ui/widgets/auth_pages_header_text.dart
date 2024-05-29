import 'package:flutter/material.dart';

class AuthPagesHeaderText extends StatelessWidget {
  final String headerText;
  const AuthPagesHeaderText({super.key,required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Text(headerText,style: Theme.of(context).textTheme.displayMedium,);
  }
}
