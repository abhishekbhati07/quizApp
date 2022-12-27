import 'package:flutter/material.dart';
import 'package:quizmaker/services/auth.dart';
import 'package:quizmaker/services/auth_service.dart';
import 'package:quizmaker/utils/app_images.dart';
import 'package:quizmaker/view/sign_up_page.dart';
import 'package:quizmaker/widgets/logo_app_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  late String email, password;
  final AuthService _authService = FirebaseAuthService(
    authService: FirebaseAuth.instance,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(child: appBar(context)),
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage(AppImages.quiz), opacity: 0.4),
        ),
        child: Form(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Spacer(),
                TextFormField(
                  key: _formKey,
                  validator: (val) {
                    return val!.isEmpty ? "Enter email id" : null;
                  },
                  decoration:
                      const InputDecoration(hintText: "Email", filled: true),
                  onChanged: (value) {
                    email = value;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration:
                      const InputDecoration(hintText: "Password", filled: true),
                  onChanged: (value) {
                    password = value;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  // onTap: () {
                  onTap: () async {
                    try {
                      await _authService.signInWithEmailAndPassword(
                        email: email,
                        password: password,
                      );
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => MainPage()));
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(e.toString()),
                        ),
                      );
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25)),
                    width: MediaQuery.of(context).size.width - 40,
                    height: 50,
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have account? ",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.red,
            width: 15,
            height: 15,
          ),
        ),
      );
}
