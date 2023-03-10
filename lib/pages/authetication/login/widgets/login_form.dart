import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riset_konsentrasi/helpers/responsive_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

final _auth = FirebaseAuth.instance;

class _LoginFormState extends State<LoginForm> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context) ? 128 : 64),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
              padding: EdgeInsets.all(16),
              child: Image(
                  image: AssetImage("assets/icons/logoUNS.png"),
                  height: 75,
                  width: 75)),
          Text("Welcome Back!",
              style: Theme.of(context).textTheme.displaySmall),
          const SizedBox(height: 8),
          Text(
              "Riset Konsentrasi Anak Autism oleh Universitas Sebelas Maret Surakarta",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center),
          const SizedBox(height: 32),
          TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  label: const Text("Email"),
                  suffixIcon: const Icon(Icons.mail)),
              style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 16),
          TextField(
              onChanged: (value) {
                password = value;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  label: const Text("Password"),
                  suffixIcon: const Icon(Icons.lock)),
              obscureText: true,
              style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 8),
          Row(children: [
            Checkbox(
                //TODO:: remember password feature
                value: false,
                onChanged: (value) {}),
            Text("Remember me", style: Theme.of(context).textTheme.bodyMedium),
            const Expanded(child: SizedBox()),
            TextButton(
                onPressed: () {
                  //TODO:: forget password page
                },
                child: const Text("Forgot Password?"))
          ]),
          const SizedBox(height: 32),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 48,
              child: ElevatedButton(
                  onPressed: () async {
                    try {
                      final user = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      if (user != null) {
                        Get.toNamed("/dashboard");
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                  child: const Text("Login"))),
          const SizedBox(height: 16),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 48,
              child: OutlinedButton.icon(
                  onPressed: () {
                    //TODO:: Login feature with Google && go to dashboard
                  },
                  icon: const Image(
                      image: AssetImage("assets/icons/google.png"),
                      width: 25,
                      height: 25),
                  label: const Text("Login with Google"),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))))),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Don't have an account yet?",
                        style: Theme.of(context).textTheme.labelLarge),
                    const SizedBox(width: 8),
                    TextButton(
                        onPressed: () {
                          Get.toNamed('/signup');
                        },
                        child: const Text("Sign Up"))
                  ]))
        ],
      ),
    );
  }
}
