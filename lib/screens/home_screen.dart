import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/drawer.dart';

import 'package:google_fonts/google_fonts.dart';

import '../api/api_services.dart';
import '../constant/color_const.dart';
import '../model/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    fetchAlbum();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: pink, size: 40),
      ),
      endDrawer: DrawerScreen(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        ///profile start
        child: ListView(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: pink,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                    radius: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      // textAlign: TextAlign.justify,
                      style: GoogleFonts.alegreyaSans(
                        textStyle: const TextStyle(
                            color: blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
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
                )
              ],
            ),

            ////profile end

            //Card fist start
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: Container(
                    // margin: EdgeInsets.only(top: 48),
                    height: 200,
                    decoration: BoxDecoration(
                      color: lightpink,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 80, right: 100),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nanny And\nBabysitting Services',
                                style: GoogleFonts.alegreyaSans(
                                  textStyle: const TextStyle(
                                      color: blue,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(blue),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ))),
                                  child: Text(
                                    'Book Now',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 00, left: 20),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset('assets/images/home.png'),
                ),
              ),
            ]),
            // fisrt card end
            FutureBuilder<Welcome>(
              future: fetchAlbum(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Your Current Booking",
                                style: GoogleFonts.alegreyaSans(
                                  textStyle: const TextStyle(
                                      color: blue,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                )),
                            SizedBox(
                              height: 10,
                            ),

                            ///Current Booking startr
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFffffff),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 238, 235, 235),
                                    blurRadius: 15.0, // soften the shadow
                                    spreadRadius: 5.0, //extend the shadow
                                    offset: Offset(
                                      5.0, // Move to right 5  horizontally
                                      5.0, // Move to bottom 5 Vertically
                                    ),
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          snapshot.data!.currentBookings
                                              .packageLabel,
                                          style: GoogleFonts.alegreyaSans(
                                            textStyle: const TextStyle(
                                                color: pink,
                                                fontSize: 24,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 100, // <-- Your width
                                          height: 35,

                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Button),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(18.0),
                                                        side: BorderSide(
                                                            color: Button)))),
                                            child: Text(
                                              'Start',
                                              style: TextStyle(fontSize: 20.0),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "From",
                                              style: GoogleFonts.alegreyaSans(
                                                textStyle: const TextStyle(
                                                    color: TextColor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 200,
                                            ),
                                            Text(
                                              "To",
                                              style: GoogleFonts.alegreyaSans(
                                                textStyle: const TextStyle(
                                                    color: TextColor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.calendar_month_rounded,
                                              color: Button,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                                snapshot.data!.currentBookings
                                                    .fromDate,
                                                style: GoogleFonts.alegreyaSans(
                                                  textStyle: const TextStyle(
                                                      color: TextColor,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )),
                                            SizedBox(
                                              width: 120,
                                            ),
                                            Row(children: [
                                              Icon(
                                                Icons.calendar_month_rounded,
                                                color: Button,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                  snapshot.data!.currentBookings
                                                      .toDate,
                                                  style:
                                                      GoogleFonts.alegreyaSans(
                                                    textStyle: const TextStyle(
                                                        color: TextColor,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  )),
                                            ])
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.punch_clock_rounded,
                                              color: Button,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              snapshot.data!.currentBookings
                                                  .fromTime,
                                              style: GoogleFonts.alegreyaSans(
                                                textStyle: const TextStyle(
                                                    color: TextColor,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 155,
                                            ),
                                            Row(children: [
                                              Icon(
                                                Icons.punch_clock_rounded,
                                                color: Button,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                snapshot.data!.currentBookings
                                                    .fromTime,
                                                style: GoogleFonts.alegreyaSans(
                                                  textStyle: const TextStyle(
                                                      color: TextColor,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            ])
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          blue),
                                                  shape: MaterialStateProperty
                                                      .all<RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                  ))),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.white,
                                                    // size: 24.0,
                                                  ),
                                                  Text("Rate Us",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle()),
                                                ],
                                              ),
                                              onPressed: () {},
                                            ),
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          blue),
                                                  shape: MaterialStateProperty
                                                      .all<RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                  ))),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.location_on,
                                                    color: Colors.white,
                                                    // size: 24.0,
                                                  ),
                                                  SizedBox(
                                                    height: 2,
                                                  ),
                                                  Text("location",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle()),
                                                ],
                                              ),
                                              onPressed: () {},
                                            ),
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          blue),
                                                  shape: MaterialStateProperty
                                                      .all<RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                  ))),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.mic,
                                                    color: Colors.white,
                                                    // size: 24.0,
                                                  ),
                                                  SizedBox(
                                                    height: 2,
                                                  ),
                                                  Text("Survillence",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle()),
                                                ],
                                              ),
                                              onPressed: () {},
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      ///cureent booking end

                      ///package start
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Packages",
                              style: GoogleFonts.alegreyaSans(
                                textStyle: const TextStyle(
                                    color: blue,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700),
                              )),
                          ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: snapshot.data!.packages.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // margin: EdgeInsets.only(top: 48),
                                      // height: 200,
                                      decoration: BoxDecoration(
                                        // color: Colors.accents,
                                        color: lightpink,

                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    // height: 0,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: iconcoloor),
                                                    child: Text(
                                                      snapshot.data!
                                                          .packages[index].id
                                                          .toString(),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all(Button),
                                                        shape: MaterialStateProperty.all<
                                                                RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            18.0),
                                                                side: BorderSide(
                                                                    color:
                                                                        Button)))),
                                                    child: Text(
                                                      'Book Now',
                                                      style: TextStyle(
                                                          fontSize: 14),
                                                    ),
                                                    onPressed: () {},
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  snapshot.data!.packages[index]
                                                      .packageName,
                                                  style:
                                                      GoogleFonts.alegreyaSans(
                                                    textStyle: const TextStyle(
                                                        color: blue,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                                Text(
                                                  '\u{20B9}${snapshot.data!.packages[index].price.toString()}',
                                                  style:
                                                      GoogleFonts.alegreyaSans(
                                                    textStyle: const TextStyle(
                                                        color: blue,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Text(
                                              snapshot.data!.packages[index]
                                                  .description,
                                              style: GoogleFonts.alegreyaSans(
                                                textStyle: const TextStyle(
                                                    color: TextColor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              maxLines: 3,
                                              overflow: TextOverflow.clip,
                                              // softWrap: false,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    )
                                  ],
                                );
                              }),
                        ],
                      )
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            )
          ],
        ),
      ),
    );
  }
}
