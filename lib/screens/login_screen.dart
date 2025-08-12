import 'package:flutter/material.dart';
import 'package:http_app/screens/products_screen.dart';
import 'package:sign_button/sign_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      height: 250,
                      width: 250,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.red[600]),
                        ),
                      ),
                    ],
                  ),
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
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                          ),
                          backgroundColor: Colors.red[600],
                        ),
                        child: Text(
                          'LOGIN',
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
                  Center(
                    widthFactor: 1.07,
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: SignInButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        buttonType: ButtonType.google,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('New to Crinkle?'),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register',
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
