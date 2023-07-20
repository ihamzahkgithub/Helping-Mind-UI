import 'package:flutter/material.dart';
import 'package:helping_mind/screens/booking.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            children: [
              const Spacer(),
              IconButton(
                hoverColor: Colors.amber,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const BookingScreen();
                  }));
                },
                icon: const Icon(Icons.location_on),
              ),
              const Spacer(),
              IconButton(
                hoverColor: Colors.amber,
                onPressed: () {},
                icon: const Icon(Icons.settings),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home_filled),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chat),
              ),
              const Spacer(),
            ],
          ),
        ),
        appBar: (AppBar(
          elevation: 0,
          centerTitle: true,
          leading: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Home',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ],
        )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: "Search here...",
                      suffix: Icon(
                        Icons.search,
                        color: Colors.amber,
                      ),
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90),
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
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              'images/hm1.png',
                            ),
                          ),
                        ),
                      ),
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 200),
                          child: Text(
                            'Welcome to Helping Mind',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 280),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              color: Colors.blue,
                              height: 120,
                              width: 100,
                              child: Image.asset('images/hm1.png'),
                            ),
                            Container(
                              color: Colors.blue,
                              height: 120,
                              width: 100,
                              child: Image.asset('images/hm1.png'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 450),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              color: Colors.blue,
                              height: 120,
                              width: 100,
                              child: Image.asset('images/hm1.png'),
                            ),
                            Container(
                              color: Colors.blue,
                              height: 120,
                              width: 100,
                              child: Image.asset('images/hm1.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
