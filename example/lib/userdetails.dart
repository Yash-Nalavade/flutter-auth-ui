/* import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserDetailsPage extends StatefulWidget {
  static const routeName = '/userdetails';
  const UserDetailsPage({Key? key}) : super(key: key);

  @override
  _UserDetailsPageState createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
              ),
              TextFormField(
                controller: _cityController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your city';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'City',
                ),
              ),
              TextFormField(
                controller: _mobileController,
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      value.length != 10 ||
                      !RegExp(r'^[0-9]+$').hasMatch(value)) {
                    return 'Please enter a valid ten-digit mobile number';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Mobile Number',
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState?.validate() ?? false) {
                    await uploadData();
                    // Navigate to the home page or any other page as needed
                    Navigator.pushReplacementNamed(context, '/home');
                  }
                },
                child: const Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> uploadData() async {
    final response = await supabase.from('userdetails').upsert([
      {
        'name': _nameController.text.trim(),
        'city': _cityController.text.trim(),
        'mobile_number': _mobileController.text.trim(),
      },
    ]);

    if (response.error != null) {
      // Handle error if needed
      print('Error uploading data: ${response.error!.message}');
    } else {
      print('Data uploaded successfully!');
    }
  }
}


 */
