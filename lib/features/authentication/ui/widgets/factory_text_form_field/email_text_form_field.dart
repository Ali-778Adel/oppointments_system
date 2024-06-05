
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oppointments_sysytem/features/authentication/ui/widgets/factory_text_form_field/text_field_interface.dart';

class EmailTextField extends AuthTextFormField2{
  const EmailTextField({
    super.key,
    required super.textEditingController,
    required super.hintText,
    required super.textFieldType
  });

  final String emailRestricts=r'[a-zA-Z0-9@._-]';

  @override
  List<TextInputFormatter> inputFormatters() {
    return [
      FilteringTextInputFormatter.allow(RegExp(emailRestricts)),];
  }

  @override
  bool obscureText() {
    return false;
  }

  @override
  String?  validator(String?val) {
    if(val==null||!RegExp(emailRestricts).hasMatch(val)){
      return "please enter a valid email";
    }else{
      return null;
    }
  }

  @override
  TextInputType keyBoardType() {
    return TextInputType.emailAddress;
  }

  @override
  Widget ?prefixIcon() {
return null;
  }

  @override
  Widget? suffixIcon(StateSetter stateSetter) {
  return null;
  }



}