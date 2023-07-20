import 'package:flutter/material.dart';
import 'package:helping_mind/screens/forgot_password.dart';
import 'package:helping_mind/screens/home_screen.dart';
import 'package:helping_mind/screens/sign_up.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 140),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Sign in',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    surfaceTintColor: Colors.amber,
                    shadowColor: Colors.black,
                    onSurface: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45)),
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    onPrimary: Colors.black,
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.apple),
                  label: const Text('Sign in with Apple'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    surfaceTintColor: Colors.amber,
                    shadowColor: Colors.black,
                    onSurface: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    onPrimary: Colors.blue,
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.g_translate),
                  label: const Text('Sign in with Google'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Insert Your Login Details',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        labelText: 'Enter Your Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Enter Your Email",
                        fillColor: Colors.white70),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Enter Your Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Enter Your Password",
                        fillColor: Colors.white70),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    surfaceTintColor: Colors.amber,
                    shadowColor: Colors.black,
                    onSurface: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45)),
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    onPrimary: Colors.white,
                    primary: Colors.amber,
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const HomeScreen();
                    }));
                    var email = emailController.text.trim();
                    var password = passwordController.text.trim();

                    if (email.isEmpty || password.isEmpty) {
                      //  will add flutterToast
                      return;
                    }

                    if (password.length < 6) {
                      //  flutter toast  message
                      return;
                    }
                  },
                  child: const Text(
                    'Sign in ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const ForgotPasswordScreen();
                      }));
                    },
                    child: const Text('Forgot Password')),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Center(
                    child: Row(
                      children: [
                        const Text(
                          'If You are a new user?',
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const SignUpScreen();
                              }));
                            },
                            child: const Text('Sign Up')),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
