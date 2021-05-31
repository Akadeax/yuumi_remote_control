import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:yuumi_remote_control/yuumi_remote.dart';

class UltimateWheel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            _arrowButton(225), _arrowButton(270), _arrowButton(315),
          ],
        ),
        Row(
          children: [
            _arrowButton(180), _middleButton(), _arrowButton(0),
          ],
        ),
        Row(
          children: [
            _arrowButton(135), _arrowButton(90), _arrowButton(45),
          ],
        ),
      ],
    );
  }

  Widget _arrowButton(int angleDegrees) {
    return SizedBox(
      width: 100,
      height: 100,
      child: TextButton(
        child: Transform.rotate(
          angle: angleDegrees * math.pi / 180,
          child: Icon(
              Icons.chevron_right
          ),
        ),
        onPressed: () async {
          var command = FirebaseFirestore.instance.collection('commands');
          command.add({
            "command": YUUMI_R,
            "angle": angleDegrees,
          }).then((value) => print("Ultimate command queued"))
              .catchError((err) => print(err));
        },
      ),
    );
  }

  Widget _middleButton() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image(
        image: AssetImage("assets/images/yuumi_r.png"),
      ),
    );
  }
}