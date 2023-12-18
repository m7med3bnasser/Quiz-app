import 'package:flutter/material.dart';
import 'package:quiz_app/homePage.dart';
import 'package:quiz_app/register/login%20view.dart';

class ResultScreen extends StatefulWidget {
  int score;
  LoginView l1 = LoginView();
  ResultScreen(this.score, {super.key});

  static const routename = 'ResultScreen';

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xFF252c4a);

    Color scandaryColor = Color(0xFF117eeb);
    return Scaffold(
      backgroundColor: Color(0xFF252c4a),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Congratulation",
              style: TextStyle(
                  color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Text(
              "Your Score is:",
              style: TextStyle(
                  color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 30,
            ),
            Text("${widget.score}",
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 80)),
            SizedBox(height: 60),
            MaterialButton(onPressed:() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
            },elevation: 0.0,
              color: Colors.orange,
              textColor: Colors.white,
              child: Text("Repeat The Quizz") ,)
          ],
        ),
      ),
    );
  }
}
