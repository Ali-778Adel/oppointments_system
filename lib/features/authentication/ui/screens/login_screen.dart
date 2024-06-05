import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oppointments_sysytem/features/authentication/ui/widgets/auth_pages_header_text.dart';
import 'package:oppointments_sysytem/features/authentication/ui/widgets/auth_pages_sub_header_text.dart';
import 'package:oppointments_sysytem/features/authentication/ui/widgets/checkbox_and_forget_password.dart';
import 'package:oppointments_sysytem/features/authentication/ui/widgets/factory_text_form_field/email_text_form_field.dart';
import 'package:oppointments_sysytem/features/authentication/ui/widgets/factory_text_form_field/password_text_field.dart';
import 'package:oppointments_sysytem/features/authentication/ui/widgets/factory_text_form_field/text_field_interface.dart';
import 'package:oppointments_sysytem/features/authentication/ui/widgets/login_sign_up_button.dart';
import 'package:oppointments_sysytem/features/authentication/ui/widgets/text_form_field.dart';

import '../widgets/bottom_page_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 100.h),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AuthPagesHeaderText(headerText: "Welcome Back"),
                  SizedBox(
                    height: 10.h,
                  ),
                  const AuthPagesSubHeaderText.copyWith(
                    subHeaderText:
                        "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                    textHeight: 1.6,
                    spaceLetter: .4,
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  EmailTextField(
                    textEditingController: TextEditingController(),
                    hintText: "Email",
                    textFieldType: TextFieldType.email,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  PasswordTextField(
                    textEditingController: TextEditingController(),
                    hintText: "Password",
                    textFieldType: TextFieldType.password,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CheckBoxAndForgetPassword(initialValue: false),
                  SizedBox(
                    height: 40.h,
                  ),
                   LoginSignUpButton(btnTxt: "Login",onTap: (){
                    formKey.currentState!.validate();
                  },),
                  SizedBox(height: 20.h,),
                  const AuthPageBottomText()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
