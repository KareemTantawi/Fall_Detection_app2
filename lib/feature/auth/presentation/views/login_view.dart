import 'package:fall_detection/core/theming/colors.dart';
import 'package:fall_detection/core/widgets/elevated_button_widget.dart';
import 'package:fall_detection/core/widgets/text_form_feild_widget.dart';
import 'package:fall_detection/feature/auth/presentation/views/signup_view.dart';
import 'package:fall_detection/feature/auth/presentation/widgets/signin_container.dart';
import 'package:fall_detection/feature/auth/presentation/widgets/signup_container.dart';
import 'package:fall_detection/feature/auth/presentation/widgets/text_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  static String id = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _key = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, SignUpScreen.id);
            },
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SigninContainer(),
            Container(
              height: MediaQuery.of(context).size.height * 0.77,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(85),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Form(
                  key: _key,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40.h,
                        ),
                        TextFormFieldWidget(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) {},
                          hintText: 'Enter Your Email',
                          icon: Icons.email_outlined,
                          validator: (value) {
                            if (value!.isEmpty ||
                                !value.contains('@') ||
                                !value.contains('.com') ||
                                !value.contains('.in')) {
                              return 'Please Enter Email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormFieldWidget(
                          obscureText: true,
                          controller: _passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          onChanged: (value) {},
                          hintText: 'Password',
                          icon: Icons.password_outlined,
                          validator: (value) {
                            if (value!.isEmpty || value.length < 6) {
                              return 'Please Enter Correct Password';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forget Password?',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        ElevatedButtonWidget(
                          tap: () {
                            if (_key.currentState!.validate()) {
                              // Navigator.pushNamed(context, SignupScreen.id);
                              print('validate');
                            }
                          },
                          title: 'Log in',
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, SignUpScreen.id);
                          },
                          child: Text(
                            'need an account? Sign Up,',
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.7),
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
