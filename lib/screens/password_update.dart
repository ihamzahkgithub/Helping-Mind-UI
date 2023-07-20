import 'package:flutter/material.dart';

class PasswordUpdateScreen extends StatefulWidget {
  const PasswordUpdateScreen({Key? key}) : super(key: key);

  @override
  State<PasswordUpdateScreen> createState() => _PasswordUpdateScreenState();
}

class _PasswordUpdateScreenState extends State<PasswordUpdateScreen> {
  var emailController = TextEditingController();

  AlertDialog showDialog() {
    return AlertDialog(
      title: const Text('Password Updated'),
      actions: [ElevatedButton(onPressed: () {}, child: const Text('Sign In'))],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.amber,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
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
                  padding: EdgeInsets.only(top: 60, left: 80),
                  child: Text(
                    'UPDATE PASSWORD',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Center(
                            child: TextField(
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
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'Re-type Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                hintText: "Re-type Password",
                                fillColor: Colors.white70),
                          ),
                        ],
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
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        onPrimary: Colors.white,
                        primary: Colors.amber,
                      ),
                      onPressed: showDialog,
                      child: const Text('Submit'),
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
