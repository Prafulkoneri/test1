import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfieScreen extends StatefulWidget {
  const ProfieScreen({Key? key}) : super(key: key);

  @override
  State<ProfieScreen> createState() => _ProfieScreenState();
}

class _ProfieScreenState extends State<ProfieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Profile"),
    );
  }
}
