import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../Login/login_screen.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:firebase_auth/firebase_auth.dart';

final _formstate = GlobalKey<FormState>();
String email = "";
String password = "";
// final auth = FirebaseAuth.instance;
class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      key: _formstate,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (value) {
              email = value!.trim();
            },
            decoration: InputDecoration(
              hintText: "USERNAME",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              onSaved: (value) {
                password = value!.trim();
              },
              decoration: InputDecoration(
                hintText: "PASSWORD",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          ElevatedButton(
            onPressed: () async {
              try{
                _formstate.currentState!.save();
                print(email);
                print(password);
                await Firebase.initializeApp();
                final res = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
                print(res);
                const snackBar = SnackBar(
                  content: Text('Create account Success.'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                Navigator.pop(context,);
              }
              catch (e){
                print('Error');
                print(e);
                const snackBar = SnackBar(
                      content: Text('Can\'t create account.'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor
            ),
            child: Text("Sign Up".toUpperCase()),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}