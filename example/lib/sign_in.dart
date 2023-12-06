import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'constants.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //safe area
    return Scaffold(
      //appBar: appBar('Welcome to DYP Polytechnic'), //Sign In
      body: ListView(
        //padding: const EdgeInsets.all(24.0),
        padding: EdgeInsets.only(top: 40.0, left: 24.0, right: 24.0, bottom: 24.0),

        children: [

         new Image.asset(
        "assets/logos/dyplg.jpg", // Replace with your image file path
        height: 100.0, // Adjust the height as needed
        width: 100.0,), // Adjust the width as needed



          SupaEmailAuth(
            redirectTo: kIsWeb ? null : 'io.supabase.flutter://',
            onSignInComplete: (response) {
              Navigator.of(context).pushReplacementNamed('/home');
            },
            onSignUpComplete: (response) {
             // Navigator.of(context).pushReplacementNamed('/home');


            },



            metadataFields: [

              MetaDataField(
                prefixIcon: const Icon(Icons.phone),
                label: 'Mobile Number',
                key: 'mobile', // use 'mobile' as the key to store in Supabase
                validator: (val) {
                  if (val == null ||
                      val.isEmpty ||
                      val.length != 10 ||
                      !RegExp(r'^[0-9]+$').hasMatch(val)) {
                    return 'Please enter a valid ten-digit mobile number';
                  }
                  return null;
                },
              ),

            /*  MetaDataField(
                prefixIcon: const Icon(Icons.person),
                label: 'Username',
                key: 'username',
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return 'Please enter something';
                  }
                  return null;
                },
              ),*/
            ],
          ),
          const Divider(),
          optionText,
          spacer,
          ElevatedButton.icon(
            icon: const Icon(Icons.email),
            onPressed: () {
              Navigator.popAndPushNamed(context, '/magic_link');
            },
            label: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: const Text('Sign in with Magic Link'),
            ),
          ),
          spacer,
          ElevatedButton.icon(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/phone_sign_in');
            },
            icon: const Icon(Icons.phone),
            label: const Text('Sign in with Phone'),
          ),
          spacer,

          /*SupaSocialsAuth(
            colored: true,
            socialProviders: SocialProviders.values,
            onSuccess: (session) {
              Navigator.of(context).pushReplacementNamed('/home');
  },
         ), */
        ],
      ),
    );
  }
}
