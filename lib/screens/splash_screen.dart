import 'package:flutter/material.dart';
import 'package:helping_mind/screens/sign_in.dart';
import 'package:helping_mind/screens/sign_up.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 140.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: Center(
                child: Image.asset(
                  'images/hm1.png',
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  surfaceTintColor: Colors.amber,
                  shadowColor: Colors.black,
                  onSurface: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45)),
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  onPrimary: Colors.white,
                  primary: Colors.amber,
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SignInScreen();
                  }));
                },
                child: const Text(
                  'Get started',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 10,
                surfaceTintColor: Colors.amber,
                shadowColor: Colors.black,
                onSurface: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45)),
                padding: const EdgeInsets.symmetric(horizontal: 82),
                onPrimary: Colors.amber,
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const SignInScreen();
                }));
              },
              child: const Text(
                'Sign in',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Center(
                child: Row(
                  children: [
                    const Text(
                      'New Around Here ?',
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
            )
          ],
        ),
      ),
    );
  }
}
