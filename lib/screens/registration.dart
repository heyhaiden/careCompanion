import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:CareCompanion/screens/onboarding_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameC = TextEditingController();
  final TextEditingController occupationC = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameC.dispose();
    occupationC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/appBackground.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: UserInfoForm(
            formKey: formKey, nameC: nameC, occupationC: occupationC),
      ),
    );
  }
}

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
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Form(
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
            const SizedBox(height: 50),
            TextFormField(
              controller: nameC,
              style: const TextStyle(color: Colors.white),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your first name';
                }
                return null;
              },
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: Colors.white),
                labelText: 'First Name',
                hintText: 'Enter your first name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: occupationC,
              style: const TextStyle(color: Colors.white),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your occupation';
                }
                return null;
              },
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                labelText: 'Occupation',
                hintText: 'Enter your occupation',
              ),
            ),
            const SizedBox(height: 45),
            MaterialButton(
              height: 40,
              shape: const StadiumBorder(),
              color: Colors.blue,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  FirebaseFirestore.instance.collection('users').add({
                    'name': nameC.text,
                    'occupation': occupationC.text,
                  }).then(
                    (value) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardingScreen(),
                        ),
                      ).then((_) {
                        nameC.clear();
                        occupationC.clear();
                      });
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
