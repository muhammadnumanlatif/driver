import 'package:driver/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/cutom_button.dart';

class CarInfoScreen extends StatefulWidget {
  const CarInfoScreen({Key? key}) : super(key: key);

  @override
  State<CarInfoScreen> createState() => _CarInfoScreenState();
}

class _CarInfoScreenState extends State<CarInfoScreen> {
  TextEditingController? carModelController = TextEditingController();
  TextEditingController? carNumberController = TextEditingController();
  TextEditingController? carColorController = TextEditingController();

  @override
  void dispose() {
    carModelController!.dispose();
    carNumberController!.dispose();
    carColorController!.dispose();
    super.dispose();
  }

  List<String?> carTypeList = ["uber-x","uber-go",'bike'];
  String? selectedCarType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(2.5.w),
          child: Column(
            children: [
              SizedBox(height: 2.5.h,),
              Padding(padding: EdgeInsets.all(2.0.w),
              child: Image.asset("images/logo1.png"),
              ),
              SizedBox(height: 2.5.h,),
              Text("Car Details",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              CustomTextField(
                  nameController: carModelController,
              label: "Car Model",
              ),
              SizedBox(height: 1.h,),

              CustomTextField(
                nameController: carNumberController,
                label: "Car Number",
              ),
              SizedBox(height: 1.h,),
              CustomTextField(
                nameController: carColorController,
                label: "Car Color",
              ),
              SizedBox(height: 2.h,),
              DropdownButton(
                dropdownColor: Colors.black,
              iconSize: 25.sp,
              focusColor: Colors.amber,
              iconEnabledColor: Colors.amber,
              hint: Text(
                "Please choose Car Type",
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.amber,
              ),

              ),
                  isExpanded: true,
                  items: carTypeList.map((car){
                    return DropdownMenuItem(child: Text(
                      car.toString(),
                      style: TextStyle(color: Colors.amber),
                    ),
                    value: car,
                    );
                  }).toList(),
                  value: selectedCarType,
                  onChanged: (value){
                    selectedCarType=value.toString();
                    setState(() {

                    });
                  },
              ),
              SizedBox(height: 2.h,),
              //button
              CustomButton(
                text: "Save Now",
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
