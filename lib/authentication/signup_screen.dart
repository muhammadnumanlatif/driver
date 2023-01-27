import 'package:driver/authentication/car_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/custom_textfield.dart';
import '../widgets/cutom_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  TextEditingController? nameController = TextEditingController();
  TextEditingController? emailController = TextEditingController();
  TextEditingController? phoneController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  @override
  void dispose() {
    nameController!.dispose();
    emailController!.dispose();
    phoneController!.dispose();
    passwordController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(1.6.w),
          child: Column(
            children: [
             Padding(padding: EdgeInsets.all(2.5.w),
             child:  Hero(
                 tag: "logo",
                 child: Image.asset("images/logo1.png")),
             ),
              SizedBox(height: 1.0.h,),
              Text("Resgister as a Driver",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 20.0.sp,
                fontWeight: FontWeight.bold,
              ),
              ),
              CustomTextField(
                  nameController: nameController,
                label: "Name",
                ),
              SizedBox(height: 1.h,),
              CustomTextField(
                nameController: emailController,
                label: "Email",
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 1.h,),
              CustomTextField(
                nameController: phoneController,
                label: "Phone",
                textInputType: TextInputType.phone,
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
                text: "Create Account",
                function: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CarInfoScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

