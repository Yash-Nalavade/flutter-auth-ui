import 'package:flutter/material.dart';
import 'cse.dart';
import 'mech.dart';
import 'civil.dart';

class student extends StatelessWidget {
  static const routeName = '/student';



//class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Notes',
      home: StudentPage(),
    );
  }
}

class StudentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /*Container(
          color: Colors.white,
          width: 650,
          height: 1000,
        ),*/
        // Display the background image
        Image.asset(
          'images/dypcet.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),

        Center(
          child: Container(
            color: const Color.fromRGBO(44, 64, 114, 15),
            width: 300,
            height: 500,
            child: Stack(
              children: [
                // Display the image
                Positioned(
                  top: 10,
                  left: 40,
                  child: Image.asset('images/dypp-removebg-preview.png'),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        child: SizedBox(
                          height: 40,
                          width: 750,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => cse()),
                              );
                             // Navigator.of(context).pushNamed('/cse');
                              //Navigator.pushNamed(context, '/cse');

                            },
                            child: Text('COMPUTER SCIENCE & ENGINEERING'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        child: SizedBox(
                          height: 40,
                          width: 750,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => mech()),
                              );
                              //Navigator.of(context).pushNamed('/mech');
                            },
                            child: Text('MECHANICAL ENGINEERING'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        child: SizedBox(
                          height: 40,
                          width: 750,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => civil()),
                              );
                              //Navigator.of(context).pushNamed('/civil');
                            },
                            child: Text('CIVIL ENGINEERING'),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
