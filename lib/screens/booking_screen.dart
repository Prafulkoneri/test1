import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BookinScreen extends StatefulWidget {
  const BookinScreen({Key? key}) : super(key: key);

  @override
  State<BookinScreen> createState() => _BookinScreenState();
}

class _BookinScreenState extends State<BookinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Booking")),
    );
  }
}
