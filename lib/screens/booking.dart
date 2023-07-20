import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: (AppBar(
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.all(20.0),
          ),
          title: const Text(
            'Booking',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )),
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: 700,
                  width: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'images/booking.jpg',
                      ),
                    ),
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 220),
                    child: Text(
                      'Session Name',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 260, left: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListTile(
                          leading: Icon(Icons.shopping_bag_outlined),
                          title: Text('8 March 2022'),
                          subtitle: Text('Tuesday, 4:00 PM to 7:00 PM'),
                        ),
                        ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text('Dept of CS, MEUT'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180),
                          child: TextButton(
                            style: ButtonStyle(),
                            onPressed: () {},
                            child: Text(
                              'Invite',
                              style: TextStyle(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 35),
                          child: Image.asset(
                            'images/booking.jpg',
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              surfaceTintColor: Colors.amber,
                              shadowColor: Colors.black,
                              onSurface: Colors.blueGrey,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45)),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 100),
                              onPrimary: Colors.white,
                              primary: Colors.amber,
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Book seat 100 PKR',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
