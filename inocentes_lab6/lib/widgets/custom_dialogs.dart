import 'package:flutter/material.dart';
import 'package:inocentes_lab6/constants.dart'; // Assuming your constants are here

// Function to show a custom dialog
customDialog(BuildContext context, {required String title, required String content}) {
  AlertDialog alertDialog = AlertDialog(
    title: Text(title),
    content: Text(content),
    actions: <Widget>[
      ElevatedButton(
        child: const Text('Okay'),
        style: ElevatedButton.styleFrom(
          backgroundColor: FB_DARK_PRIMARY, // Use your constant here
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop(); // Close the dialog
        },
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alertDialog;
    },
  );
}