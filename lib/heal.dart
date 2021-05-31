import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yuumi_remote_control/yuumi_remote.dart';

class HealButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () async {
          var command = FirebaseFirestore.instance.collection('commands');
          command.add({
            "command": YUUMI_E,
          }).then((value) => print("Heal command queued"))
              .catchError((err) => print(err));
        },
        child: Row(
          children: [
            Image(
              image: AssetImage("assets/images/yuumi_e.png"),
            ),
            Text("Zoomies, wooo"),
          ],
        )
    );
  }
}
