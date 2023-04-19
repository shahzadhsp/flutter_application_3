

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text('MyClipper')),
        body: Column(
          children: [
            ClipPath(
              clipper: ShahzadClipper(),
              child: Container(
                color: Colors.blue[400],
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 10.0,
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('images/download.jpg'),
                          radius: 60,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          'Ayeza Khan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24.0),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'joined:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'march 12,2020',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(6.0)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                        'Name',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Text(
                        'Ayeza Khan',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(6.0)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_city,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                        'Location',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        'Karachi, Pakistan',
                        textScaleFactor: 1,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(6.0)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                        'Phone',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Edit Profile to set Phone No',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(6.0)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.line_style,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                        'My Listings',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Text(
                        '11',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  '  Log Out  ',
                  style: TextStyle(fontSize: 21),
                )),
            SizedBox(
              height: 6,
            ),
          ],
        ),
        bottomSheet: Container(
          height: 55,
          color: Colors.black26,
          child: Row(

            children: [
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Icon(
                  Icons.home,
                  size: 32,
                  semanticLabel: 'Home',
                  color: Colors.white70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:70.0),
                child: Icon(
                  Icons.favorite,
                  size: 32,
                  semanticLabel: 'Favourites',
                  color: Colors.white70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70.0),
                child: Icon(
                  Icons.comment,
                  size: 32,
                  semanticLabel: 'comments',
                  color: Colors.white70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70.0),
                child: Icon(
                  Icons.people,
                  size: 32,
                  semanticLabel: 'profile',
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        )

        // bottomNavigationBar: BottomNavigationBar(items: [
        //   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //   BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourite'),
        //   BottomNavigationBarItem(icon: Icon(Icons.comment), label: 'Comments'),
        //   BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile',),
        // ]),
        );
  }
}

class ShahzadClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var heightoffset = height * 0.01;
    Path path = Path();
    path.lineTo(0, height * 0.55);
    path.quadraticBezierTo(width * 0.5, height + 50, width, height * 0.55);
    path.lineTo(width, height);
    path.lineTo(width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
