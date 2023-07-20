import 'package:flutter/material.dart';
import 'package:helping_mind/screens/code_verification.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.amber,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 620,
                width: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 90, left: 80),
                  child: Text(
                    'FORGOT PASSWORD',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Column(
                  children: [
                    const Center(
                        child: Text(
                      'Provide Your Account Email',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                      ),
                    )),
                    const Center(
                        child: Text('for which You want to reset ',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                            ))),
                    const Center(
                      child: Text(
                        'Your Password',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Email ID',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Center(
                        child: TextField(
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
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        surfaceTintColor: Colors.amber,
                        shadowColor: Colors.black,
                        onSurface: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45)),
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        onPrimary: Colors.white,
                        primary: Colors.amber,
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const CodeVerificationScreen();
                        }));
                      },
                      child: const Text('Request reset Password link'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Cancel'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
