import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class civil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Civil Engineering'),
      ),
      body: Center(
        child: Container(
          clipBehavior: Clip.none,
          color: const Color.fromRGBO(44, 64, 114, 15),
          width: 300,
          height: 500,
          alignment: Alignment.center,
          child: Stack(
            children: [
              // Display the image
              Positioned(
                top: 55,
                left: 0,
                right: 0,
                child: Image.asset('images/dypp-removebg-preview.png',
                    fit: BoxFit.fill),
              ),
              // Display the buttons
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      launch('https://www.youtube.com/');
                    },
                    child: Text('   First Year   '),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      launch('https://www.youtube.com/');
                    },
                    child: Text('Second Year'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      launch('https://www.youtube.com/');
                    },
                    child: Text('  Third Year  '),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
