import 'package:flutter/material.dart';
import 'package:helping_mind/screens/sign_in.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //CheckBox Terms and Conditions
  bool value = false;

  //Controllers for TextFields
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var mobilePhoneController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.amber,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.amber,
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 700,
                width: 600,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        'Register as New User',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: Text(
                  'Details',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                            labelText: 'Enter Your Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Enter Your Name",
                            fillColor: Colors.white70),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextField(
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
                      const SizedBox(
                        height: 15,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: mobilePhoneController,
                        decoration: InputDecoration(
                            labelText: 'Enter Your Phone Number',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Enter Your Phone Number",
                            fillColor: Colors.white70),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextField(
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
                      const SizedBox(
                        height: 15,
                      ),
                      TextField(
                        controller: confirmPassController,
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Confirm Password",
                            fillColor: Colors.white70),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                  value: value,
                                  onChanged: (value) => this.value = value!),
                              const Text('I accept Terms and Conditions'),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text('Terms and Conditions')),
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
                          var name = nameController.text.trim();
                          var email = emailController.text.trim();
                          var mobilePhone = mobilePhoneController.text.trim();
                          var password = passwordController.text.trim();
                          var confirmPassword =
                              confirmPassController.text.trim();

                          if (name.isEmpty ||
                              email.isEmpty ||
                              mobilePhone.isEmpty ||
                              password.isEmpty ||
                              confirmPassword.isEmpty) {
                            // flutter toast
                            return;
                          }

                          if (password.length < 6) {
                            // toast
                            return;
                          }
                          if (password != confirmPassword) {
                            // toast
                            return;
                          }
                        },
                        child: const Text(
                          'Sign Up ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Row(
                          children: [
                            const Text('Already have an account'),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return const SignInScreen();
                                  }));
                                },
                                child: const Text('Sign in')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
