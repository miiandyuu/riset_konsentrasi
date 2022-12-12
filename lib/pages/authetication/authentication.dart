import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riset_konsentrasi/constants/style.dart';
import 'package:riset_konsentrasi/routing/routes.dart';
import 'package:riset_konsentrasi/widgets/custom_text.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Image.asset(
                    "assets/logoUNS.png",
                    width: 50,
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Login",
                  style: GoogleFonts.roboto(
                      fontSize: 30, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: const [
                CustomText(
                  text: "Welcome back to the admin panel",
                  color: lightGrey,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "abc@domain.com",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "123",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    const CustomText(text: "Remember Me")
                  ],
                ),
                const CustomText(
                  text: "Forgot password",
                  color: primary,
                )
              ],
            ),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {},
                child: CustomText(
                  text: "Login",
                  color: Colors.white,
                )),
            InkWell(
              onTap: () {
                Get.offAllNamed(RootRoute);
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: primary),
                alignment: Alignment.center,
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: const CustomText(
                  text: "Login",
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 15),
            RichText(
                text: const TextSpan(children: [
              TextSpan(text: "Do not have admin credentials? "),
              TextSpan(
                  text: "Request credentials", style: TextStyle(color: primary))
            ]))
          ],
        ),
      )),
    );
  }
}
