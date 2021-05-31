import 'package:flutter/material.dart';
import 'package:yuumi_remote_control/heal.dart';
import 'package:yuumi_remote_control/recall.dart';
import 'package:yuumi_remote_control/ultimate_wheel.dart';

const YUUMI_Q = "YUUMI_Q";
const YUUMI_R = "YUUMI_R";
const YUUMI_E = "YUUMI_E";
const YUUMI_RECALL = "YUUMI_RECALL";

class YuumiRemote extends StatefulWidget {
  @override
  _YuumiRemoteState createState() => _YuumiRemoteState();
}

class _YuumiRemoteState extends State<YuumiRemote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: UltimateWheel()
          ),
          Expanded(
            child: HealButton(),
          ),
          Expanded(
            child: RecallButton(),
          )
        ],
      ),
    );
  }
}