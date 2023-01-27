import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
             Padding(padding: EdgeInsets.all(20),
             child:  Hero(
                 tag: "logo",
                 child: Image.asset("images/logo1.png")),
             ),
              SizedBox(height: 10,),
             const Text("Resgister as a Driver",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              ),
              CustomTextField(
                  nameController: nameController,
                label: "Name",
                ),
              CustomTextField(
                nameController: emailController,
                label: "Email",
                textInputType: TextInputType.emailAddress,
              ),
              CustomTextField(
                nameController: phoneController,
                label: "Phone",
                textInputType: TextInputType.phone,
              ),
              CustomTextField(
                nameController: passwordController,
                label: "Password",
                isObsucreType: true,
              ),

              SizedBox(height: 20,),
              //button
              CustomButton(
                text: "Create Account",
                function: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

