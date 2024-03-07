import 'package:fall_detection/core/theming/colors.dart';
import 'package:fall_detection/core/widgets/elevated_button_widget.dart';
import 'package:fall_detection/core/widgets/text_form_feild_widget.dart';
import 'package:fall_detection/feature/auth/presentation/Manger/Cubits/Auth_Cubit/Auth_Cubit.dart';
import 'package:fall_detection/feature/auth/presentation/Manger/Cubits/Auth_Cubit/Auth_States.dart';
import 'package:fall_detection/feature/auth/presentation/widgets/signup_container.dart';
import 'package:fall_detection/feature/auth/presentation/widgets/text_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../home/presenation/views/home_view.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});
  static String id = '/signup';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _genderController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<AuthCubit,AuthStates>(
        listener: (context, state) {
          if(state is SignUpSuccess){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Success"),

            ));
            Navigator.pushNamed(context, HomeScreen.id);
          }
          else if (state is SignUpFailure) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.errMessage),
            ));
          }
        },
        builder: (context, state) {
          return  Scaffold(
            backgroundColor: AppColors.primaryColor,
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SignupContainer(),
                  Container(
                    height: 596.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      // color: Colors.red,
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(85),
                      ),
                    ),
                    child: Padding(
                      padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 28),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Form(
                          key: _key,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              TextFormFieldWidget(
                                controller:  context.read<AuthCubit>().signUpEmail,
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (value) {},
                                hintText: 'Enter Your Email',
                                icon: Icons.email_outlined,
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !value.contains('@') ||
                                      !value.contains('.com')) {
                                    return 'Please Enter Email';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              TextFormFieldWidget(
                                obscureText: true,
                                controller:  context.read<AuthCubit>().signUpPassword,
                                keyboardType: TextInputType.visiblePassword,
                                onChanged: (value) {},
                                hintText: 'Password',
                                icon: Icons.password_outlined,
                                validator: (value) {
                                  if (value!.isEmpty || value.length < 6) {
                                    return 'Please Enter Correct Password';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              TextFormFieldWidget(
                                controller:  context.read<AuthCubit>().signUpName,
                                keyboardType: TextInputType.name,
                                onChanged: (value) {},
                                hintText: 'Name',
                                icon: Icons.person_outline,
                                validator: (value) {
                                  if (value!.isEmpty || value.length < 2) {
                                    return 'Please Enter Name';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              TextFormFieldWidget(
                                controller:  context.read<AuthCubit>().signUpGender,
                                keyboardType: TextInputType.name,
                                onChanged: (value) {},
                                hintText: 'Gender',
                                icon: Icons.male_outlined,
                                validator: (value) {
                                  if (value!.isEmpty || value.length < 2) {
                                    return 'Please Enter Gender';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              TextFormFieldWidget(
                                controller: context.read<AuthCubit>().signUpPhoneNumber,
                                keyboardType: TextInputType.phone,
                                onChanged: (value) {},
                                hintText: 'Phone',
                                icon: Icons.phone_android_outlined,
                                validator: (value) {
                                  if (value!.isEmpty || value.length < 10) {
                                    return 'Please Enter Phone';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              state is SignUpLoading?CircularProgressIndicator():
                              ElevatedButtonWidget(
                                tap: () {
                                  if (_key.currentState!.validate()) {
                                    context.read<AuthCubit>().signUp();
                                   // Navigator.pushNamed(context, '/login');
                                  } else {
                                    print('error');
                                  }
                                },
                                title: 'Sign up',
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              TextButtonWidget(
                                tap: () {
                                  Navigator.pushNamed(context, '/login');
                                },
                                title: 'Already have an account? Log in',
                              )
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
        },

      ),
    );
  }
}
