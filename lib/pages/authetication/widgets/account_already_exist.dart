import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/constants/style.dart';

class AccountAlreadyExist extends StatelessWidget {
  final bool login;
  final Function? press;

  const AccountAlreadyExist({Key? key, this.login = true, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Daftar" : "Masuk",
          style: TextStyle(
              color: AppColor.primaryColor, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
