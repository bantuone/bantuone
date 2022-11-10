import 'dart:io';

import 'package:bantuone/core/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../auth_service.dart';

CustomAlertDialog(BuildContext context) {
  Widget cancelButton = TextButton(
    child: Text(
      "TIDAK",
      style:
          TextStyle(color: darkBlue, fontSize: 15, fontWeight: FontWeight.bold),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = TextButton(
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(darkBlue)),
    child: Text(
      "YA",
      style:
          TextStyle(color: white, fontSize: 15, fontWeight: FontWeight.bold),
    ),
    onPressed: () {
      AuthService().signOut();
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: null,
    content: Text(
      "Apakah Anda Yakin Untuk Keluar?",
      style:
          TextStyle(color: darkBlue, fontSize: 20, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ),
    actionsAlignment: MainAxisAlignment.center,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
