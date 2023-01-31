import 'package:driver/authentication/signup_screen.dart';
import 'package:driver/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/custom_textfield.dart';
import '../widgets/cutom_button.dart';
import 'car_info_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  @override
  void dispose() {
    emailController!.dispose();
    passwordController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(2.w),
          child: Column(
            children: [
              SizedBox(height: 3.h,),
              Padding(padding: EdgeInsets.all(2.5.w),
                child:  Hero(
                    tag: "logo",
                    child: Image.asset("images/logo1.png")),
              ),
              SizedBox(height: 1.0.h,),
              Text("Login as a Driver",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomTextField(
                nameController: emailController,
                label: "Email",
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 1.h,),
              CustomTextField(
                nameController: passwordController,
                label: "Password",
                isObsucreType: true,
              ),
              SizedBox(height: 2.h,),
              //button
              CustomButton(
                text: "Login",
                function: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>CarInfoScreen()));
                },
              ),
              CustomTextButton(
                text:"Do not have an Account? Register Here",
                function: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
