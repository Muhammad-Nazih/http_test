import 'package:flutter/material.dart';
import 'package:http_app/screens/food_app/food_login.dart';
import 'package:http_app/widgets/widgets_support.dart';

class FoodSignUp extends StatefulWidget {
  const FoodSignUp({super.key});

  @override
  State<FoodSignUp> createState() => _FoodSignUpState();
}

class _FoodSignUpState extends State<FoodSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height / 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFff5c30), Color(0xFFe74b1a)],
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height / 2.5,
              margin: EdgeInsets.only(
                top: MediaQuery.sizeOf(context).height / 3,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/logo1.png',
                      width: MediaQuery.sizeOf(context).width / 1.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 50),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height / 2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 30),
                          Text(
                            'Sign Up',
                            style: AppWidget.bold1TextFieldStyle(),
                          ),
                          SizedBox(height: 40),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Name',
                              hintStyle: AppWidget.bold21TextFieldStyle(),
                              prefixIcon: Icon(Icons.person_outline),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: AppWidget.bold21TextFieldStyle(),
                              prefixIcon: Icon(Icons.email_outlined),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: AppWidget.bold21TextFieldStyle(),
                              prefixIcon: Icon(Icons.lock_outline),
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFe74b1a),
                              padding: EdgeInsets.symmetric(horizontal: 60),
                            ),
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 80,),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FoodLogin()));
                    },
                    child: Text('Already have an account? Login', style: AppWidget.bold2TextFieldStyle(),))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}