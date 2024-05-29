
import 'package:flutter/services.dart';
import 'package:oppointments_sysytem/features/authentication/ui/widgets/factory_text_form_field/text_field_interface.dart';

class PasswordTextField extends AuthTextFormField1{
  const PasswordTextField({super.key, required super.textEditingController, required super.hintText, required super.textFieldType});

  final String passwordPattern = r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$&*~]).{8,}$';

  @override
  List<TextInputFormatter> inputFormatters() {
    return[

    ];
  }

  @override
  bool obscureText() {
   return true;
  }

  @override
  String?  validator(String?val) {
    if(val==null||!RegExp(passwordPattern).hasMatch(val)){
      return 'Password must be at least 8 characters long\n'
          'include an uppercase letter\n'
          'a lowercase letter\n'
          'a number\n and a special character.';
    }else{
      return null;
    }
  }
  @override
  TextInputType keyBoardType() {
    return TextInputType.visiblePassword;
  }

}