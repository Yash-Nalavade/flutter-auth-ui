import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class contactpage extends StatelessWidget {
  static const routeName = '/contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
            subtitle: Text('+02312601436'),
            onTap: () => launch('tel:+02312601436'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('dyp.poly16@gmail.com'),
            onTap: () => launch('mailto:dyp.poly16@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Address'),
            subtitle: Text('D. Y. Patil Polytechnic Kasaba Bawada Kolhapur, Maharashtra 416113'),
            onTap: () => launch('https://www.google.com/maps/search/?api=1&query=D. Y. Patil Polytechnic Kasaba Bawada Kolhapur, Maharashtra 416113'),
          ),
          // Added ListTile for Instagram and Facebook page
          ListTile(
            leading: Icon(Icons.camera_alt),
            title: Text('Instagram'),
            subtitle: Text('@dyppkop'),
            onTap: () => launch('https://www.instagram.com/dyppkop'), // Replace with your Instagram username
          ),
          ListTile(
            leading: Icon(Icons.facebook),
            title: Text('Facebook'),
            subtitle: Text('dyppkol'),
            onTap: () => launch('https://www.facebook.com/dyppkol'), // Replace with your Facebook page name
          ),
        ],
      ),
    );
  }
}
