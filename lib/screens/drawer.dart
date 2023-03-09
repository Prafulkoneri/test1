import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:typed_data/typed_data.dart';

import '../constant/color_const.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              SizedBox(
                height: 200,
                child: DrawerHeader(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            radius: 60,
                            backgroundColor: pink,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile.png'),
                              radius: 60,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Emily Cyrus",
                        style: GoogleFonts.alegreyaSans(
                          textStyle: const TextStyle(
                              color: pink,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Home',
                        style: GoogleFonts.alegreyaSans(
                          textStyle: const TextStyle(
                              color: blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      endIndent: 20,
                      color: lightpink,
                    ),
                    ListTile(
                      title: Text(
                        'Book A Nanny',
                        style: GoogleFonts.alegreyaSans(
                          textStyle: const TextStyle(
                              color: blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      endIndent: 20,
                      color: lightpink,
                    ),
                    ListTile(
                      title: Text(
                        'How It Works',
                        style: GoogleFonts.alegreyaSans(
                          textStyle: const TextStyle(
                              color: blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      endIndent: 20,
                      color: lightpink,
                    ),
                    ListTile(
                      title: Text(
                        'Why Nanny Vanny',
                        style: GoogleFonts.alegreyaSans(
                          textStyle: const TextStyle(
                              color: blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      endIndent: 20,
                      color: lightpink,
                    ),
                    ListTile(
                      title: Text(
                        'My Booking',
                        style: GoogleFonts.alegreyaSans(
                          textStyle: const TextStyle(
                              color: blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      endIndent: 20,
                      color: lightpink,
                    ),
                    ListTile(
                      title: Text(
                        'My Profile',
                        style: GoogleFonts.alegreyaSans(
                          textStyle: const TextStyle(
                              color: blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      endIndent: 20,
                      color: lightpink,
                    ),
                    ListTile(
                      title: Text(
                        'Support',
                        style: GoogleFonts.alegreyaSans(
                          textStyle: const TextStyle(
                              color: blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
