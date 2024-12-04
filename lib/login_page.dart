import 'package:flutter/material.dart';
import 'package:loginpage/components/my_textfield.dart';
import 'package:loginpage/components/mybutton.dart';
import 'package:loginpage/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Text editing controllers
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

//signUser In
  void signuserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),

              // Logo
              const Image(
                image: NetworkImage(
                    'https://2235233.fs1.hubspotusercontent-na1.net/hubfs/2235233/blog-import/2022/07-22-Jul/every-social-media-logo-and-icon-in-one-handy-place-instagram.png'), // Replace with your URL
                height: 100, // Adjust the size as needed
                width: 100,
              ),
              const SizedBox(height: 50),

              // Welcome Text
              const Text(
                'Welcome back you`ve been missed!! ',
                style: TextStyle(
                  color: Color.fromARGB(135, 0, 0, 0),
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 24),

              // Input text for username
              MyTextfield(
                controller: userNameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(height: 16),

              // Input for password
              MyTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 16),

              // Forgot password
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // SignInButton
              MyButton(
                onTap: signuserIn,
              ),

              const SizedBox(height: 60),

              // Or Continue with
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'or Continue With',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 60),
              // Apple or Google Sign In
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'lib/images/apple_logo.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  SquareTile(imagePath: 'lib/images/google_logo.png'),
                ],
              ),

              const SizedBox(height: 40),

              // Not a member? Register Now
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a Memeber?'),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Register Now",
                      style: TextStyle(
                          color: Colors.blue[900], fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
