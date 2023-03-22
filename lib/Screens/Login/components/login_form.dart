//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../Signup/signup_screen.dart';
//import '../../temp/temperature.dart';
//import 'package:flutter_auth/LandingScreen/landing_screen.dart';
import 'package:flutter_auth/SensorScreen/sensor_screen.dart';


final _formstate = GlobalKey<FormState>();
String email = "";
String password = "";
// final auth = FirebaseAuth.instance;
class LoginForm extends StatelessWidget {
  @override
  const LoginForm({
    Key? key,
  }) : super(key: key);

// final _emailController = TextEditingController();
// final _passwordController = TextEditingController();

// Future signIn() async{
//   await FirebaseAuth.instance.signInWithEmailAndPassword(
//     email: _emailController.text.trim(), 
//     password: _passwordController.text.trim(),
//     );
// }

// //@override
// void dispose() {
//   _emailController.dispose();
//   _passwordController.dispose();
//     super.dispose();
// }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      key: _formstate,
      child: Column(
        children: [
          TextFormField(
            // controller: _emailController,
            // keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (value) {
              email = value!.trim();
            },
            decoration: InputDecoration(
              hintText: "USERNAME",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person,size: 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              // controller: _passwordController,
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              onSaved: (value) {
                password = value!;
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
          const SizedBox(height: defaultPadding),
          Hero(
            tag: "login_btn",
            //child:GestureDetector
          //(onTap: signin,
          //)
            child: GestureDetector(
              //onTap: signIn,
              child: ElevatedButton(
                onPressed: () async {
                  _formstate.currentState!.save();
                  print(email);
                  print(password);
                  try {
                    await Firebase.initializeApp();
                    final res = await FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: email, password: password);
                    print(res);
                    const snackBar = SnackBar(
                      content: Text('Login Success'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          // return TemperaturePage();
                          return SensorScreen();
                        },
                      ),
                    );
                  } catch (e) {
                    print('error');
                    print(e);
                    const snackBar = SnackBar(
                      content: Text('The username or password is incorrect !'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor
                ),
                child: Text(
                  "Login".toUpperCase(),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
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
