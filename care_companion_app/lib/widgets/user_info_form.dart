import 'package:care_companion_app/screens/home_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserInfoForm extends StatelessWidget {
  const UserInfoForm({
    super.key,
    required this.formKey,
    required this.nameC,
    required this.occupationC,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameC;
  final TextEditingController occupationC;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Registration',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 60),
          TextFormField(
            controller: nameC,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Name',
              hintText: 'Enter your name',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: occupationC,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your occupation';
              }
              return null;
            },
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              labelText: 'Occupation',
              hintText: 'Enter your occupation',
            ),
          ),
          const SizedBox(height: 40),
          MaterialButton(
            height: 40,
            shape: const StadiumBorder(),
            color: Colors.blue,
            child: const Text(
              'Let\'s Start',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                FirebaseFirestore.instance.collection('users').add({
                  'name': nameC.text,
                  'occupation': occupationC.text,
                }).then((value) {
                  nameC.clear();
                  occupationC.clear();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                });
                print(nameC.text);
                print(occupationC.text);
              }
            },
          ),
        ],
      ),
    );
  }
}
