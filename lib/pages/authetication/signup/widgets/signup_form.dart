import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../helpers/responsive_screen.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
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
          Text("Register Here!",
              style: Theme.of(context).textTheme.displaySmall),
          const SizedBox(height: 8),
          Text(
              "Riset Konsentrasi Anak Autism oleh Universitas Sebelas Maret Surakarta",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center),
          const SizedBox(height: 32),
          TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  label: const Text("Email"),
                  suffixIcon: const Icon(Icons.mail)),
              style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 16),
          TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  label: const Text("Password"),
                  suffixIcon: const Icon(Icons.lock)),
              obscureText: true,
              style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 16),
          TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  label: const Text("Confirm Password"),
                  suffixIcon: const Icon(Icons.lock)),
              obscureText: true,
              style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 32),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              )),
              child: const Text("Sign Up"),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 48,
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Image(
                image: AssetImage("assets/icons/google.png"),
                width: 25,
                height: 25,
              ),
              label: const Text("Signup with Google"),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: Theme.of(context).textTheme.button,
                ),
                const SizedBox(width: 8),
                TextButton(
                    onPressed: () {
                      Get.toNamed('/login');
                    },
                    child: const Text("Log In"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
