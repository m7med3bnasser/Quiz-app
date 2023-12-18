import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/homePage.dart';



class LoginView extends StatelessWidget {
  static String routeName = "login";

  LoginView({super.key});

 var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF252c4a),
      body: Form(
        key:formKey ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInRight(
              delay: const Duration(milliseconds: 50),
              child: Text(
                "Welcome To QUIZ App",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 32.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 100),
              child: Text(
                "Plezz enter First name and Last Name",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 22.0,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 150),
              child: Text(
                "First Name",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 28.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FadeInRight(delay: const Duration(milliseconds: 200),
              child: TextFormField(
                controller:firstNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "firstName cannot be empty";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    label: Text("Enter First Name"),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.white))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 250),
              child: Text(
                " last Name",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 28.0,
                ),
              ),
            ),const SizedBox(
              height: 10,
            ),
            FadeInRight(delay: const Duration(milliseconds: 300),
              child: TextFormField(
                controller: lastNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Last Name cannot be empty";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    label: Text("Enter Last Name"),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.white))),
              ),
            ),const SizedBox(
              height: 20,
            ),
            FadeInUp(
              delay: const Duration(milliseconds: 350),
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))
                ),
                  onPressed: () {if(formKey.currentState!.validate()){
                    Navigator.pushReplacementNamed(context,HomePage.routeName1);
                  }

              }, child: Text("Start Quizz",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 28.0,
              ),)),
            )
          ],

        ),
      ),
    );
  }
}
