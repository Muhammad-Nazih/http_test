import 'package:flutter/material.dart';
import 'package:http_app/screens/mix/login_screen.dart';
import 'package:http_app/screens/mix/products_screen.dart';
import 'package:sign_button/sign_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var nameController = TextEditingController();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  bool isPasswordShown = false;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/crinkle_logo.png',
                      height: 200,
                      width: 250,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Text(
                    'Register',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome! please enter your details.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Name is required';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person_outline),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
                      } else if (!RegExp(
                        r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$',
                      ).hasMatch(value.trim())) {
                        return 'Invalid email format';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }
                      return null;
                    },
                    obscureText: !isPasswordShown,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPasswordShown = !isPasswordShown;
                          });
                        },
                        icon: isPasswordShown
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    widthFactor: 1.07,
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            if (emailController.text == 'admin@maham.com' &&
                                passwordController.text == '123456') {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProductsScreen(),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Email or password is incorrect',
                                  ),
                                ),
                              );
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                          ),
                          backgroundColor: Colors.red[600],
                        ),
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Center(
                    widthFactor: 12,
                    child: Row(
                      children: [
                        Container(
                          height: 1,
                          width: 140,
                          color: Colors.grey[300],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            'OR',
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        ),
                        Container(
                          height: 1,
                          width: 140,
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: SignInButton.mini(
                          elevation: 4,
                          buttonType: ButtonType.google,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: SignInButton.mini(
                          elevation: 4,
                          buttonType: ButtonType.facebook,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: SignInButton.mini(
                          elevation: 4,
                          buttonType: ButtonType.apple,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?'),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.red[600]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
