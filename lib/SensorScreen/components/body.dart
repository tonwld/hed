import 'package:flutter/material.dart';
import 'package:flutter_auth/SensorScreen/components/custom_card.dart';
import 'package:flutter_auth/constants_2.dart';

class SensorScreenBody extends StatefulWidget {
  @override
  _SensorScreenBodyState createState() => _SensorScreenBodyState();
}

class _SensorScreenBodyState extends State<SensorScreenBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 30,
                  color: kGreenColor,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    color: Color.fromARGB(221, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Container(
                  height: size.height * 0.045,
                  width: size.width * 0.095,
                  decoration: BoxDecoration(
                    color: kBgColor,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(31, 51, 75, 11),
                        blurRadius: 8,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.exit_to_app_outlined,
                    color: kGreenColor,
                  ),
                )
              ],
            ),
            SizedBox(height: size.height * 0.03),
            Row(
              children: [
                Container(
                  // height: 120,
                  // width: 120,
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.circular(20),
                  //   child: Image.asset(
                  //     "assets/images/profile_picture.jpg",
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                ),
                SizedBox(width: size.width * 0.05),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'JUNE 14, 2020',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Hi!,\nMushroom Farm',
                      style: TextStyle(
                        color: Color.fromARGB(221, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // SizedBox(height: size.height * 0.05),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             '40°',
            //             style: TextStyle(
            //               fontSize: 16,
            //               fontWeight: FontWeight.w600,
            //               color: Colors.grey,
            //             ),
            //           ),
            //           Text(
            //             'TEMPERATURE',
            //             style: TextStyle(fontSize: 16, color: Colors.grey),
            //           ),
            //         ],
            //       ),
            //     ),
            //     Expanded(
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             '59%',
            //             style: TextStyle(
            //               fontSize: 16,
            //               fontWeight: FontWeight.w600,
            //               color: Colors.grey,
            //             ),
            //           ),
            //           Text(
            //             'HUMIDITY',
            //             style: TextStyle(fontSize: 16, color: Colors.grey),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            
            SizedBox(height: size.height * 0.025),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children : [
                Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: size.height * 0.15,
                        width: size.height * 0.15,
                        decoration: BoxDecoration(
                          color: kBgColor,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              offset: Offset(3, 3),
                            ),
                            BoxShadow(
                              color: Color.fromARGB(255, 235, 229, 223),
                              blurRadius: 0,
                              offset: Offset(-3, -3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "    TEMP",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                  // Text(
                                  //   "NEW CONTROL",
                                  //   style: TextStyle(
                                  //     color: Colors.black45,
                                  //     fontWeight: FontWeight.bold,
                                  //   ),
                                  // )
                                ],
                              ),
                              // Icon(
                              //   Icons.add,
                              //   size: 40,
                              //   color: Colors.black54,
                              // ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.08),
                      Container(
                        height: size.height * 0.15,
                        width: size.height * 0.15,
                        decoration: BoxDecoration(
                          color: kBgColor,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              offset: Offset(3, 3),
                            ),
                            BoxShadow(
                              color: Color.fromARGB(255, 235, 229, 223),
                              blurRadius: 0,
                              offset: Offset(-3, -3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "    HUMI",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                  // Text(
                                  //   "NEW CONTROL",
                                  //   style: TextStyle(
                                  //     color: Colors.black45,
                                  //     fontWeight: FontWeight.bold,
                                  //   ),
                                  // )
                                ],
                              ),
                              // Icon(
                              //   Icons.add,
                              //   size: 40,
                              //   color: Colors.black54,
                              // ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.075),
                      Container(
                        height: size.height * 0.15,
                        width: size.height * 0.15,
                        decoration: BoxDecoration(
                          color: kBgColor,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              offset: Offset(3, 3),
                            ),
                            BoxShadow(
                              color: Color.fromARGB(255, 235, 229, 223),
                              blurRadius: 0,
                              offset: Offset(-3, -3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "     GAS",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                  // Text(
                                  //   "NEW CONTROL",
                                  //   style: TextStyle(
                                  //     color: Colors.black45,
                                  //     fontWeight: FontWeight.bold,
                                  //   ),
                                  // )
                                ],
                              ),
                              // Icon(
                              //   Icons.add,
                              //   size: 40,
                              //   color: Colors.black54,
                              // ),
                            ],
                          ),
                        ),
                      ),
                      // Icon(
                      //   Icons.add,
                      //   size: 40,
                      //   color: Colors.black54,
                      // ),
                    ],
                  ),
              ),
            ]
            //   children: [
            //     Container(
            //       height: size.height * 0.2,
            //       width: size.height * 0.2,
            //       decoration: BoxDecoration(
            //         color: kBgColor,
            //         borderRadius: BorderRadius.circular(100),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black12,
            //             blurRadius: 8,
            //             offset: Offset(3, 3),
            //           ),
            //           BoxShadow(
            //             color: Colors.white,
            //             blurRadius: 0,
            //             offset: Offset(-3, -3),
            //           ),
            //         ],
            //       ),
            //       child: Padding(
            //         padding: EdgeInsets.all(15),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               children: [
            //                 Text(
            //                   "CAMERA",
            //                   style: TextStyle(
            //                     fontSize: 16,
            //                     fontWeight: FontWeight.bold,
            //                     color: Colors.black54,
            //                   ),
            //                 ),
            //                 // Text(
            //                 //   "NEW CONTROL",
            //                 //   style: TextStyle(
            //                 //     color: Colors.black45,
            //                 //     fontWeight: FontWeight.bold,
            //                 //   ),
            //                 // )
            //               ],
            //             ),
            //             // Icon(
            //             //   Icons.add,
            //             //   size: 40,
            //             //   color: Colors.black54,
            //             // ),
            //           ],
            //         ),
            //       ),
            //     ),  
            //     Container(
            //       height: size.height * 0.2,
            //       width: size.width * 0.2,
            //       decoration: BoxDecoration(
            //         color: kBgColor,
            //         borderRadius: BorderRadius.circular(20),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black12,
            //             blurRadius: 8,
            //             offset: Offset(3, 3),
            //           ),
            //           BoxShadow(
            //             color: Colors.white,
            //             blurRadius: 0,
            //             offset: Offset(-3, -3),
            //           ),
            //         ],
            //       ),
            //       child: Padding(
            //         padding: EdgeInsets.all(15),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   "CAMERA",
            //                   style: TextStyle(
            //                     fontSize: 16,
            //                     fontWeight: FontWeight.bold,
            //                     color: Colors.black54,
            //                   ),
            //                 ),
            //                 // Text(
            //                 //   "NEW CONTROL",
            //                 //   style: TextStyle(
            //                 //     color: Colors.black45,
            //                 //     fontWeight: FontWeight.bold,
            //                 //   ),
            //                 // )
            //               ],
            //             ),
            //             // Icon(
            //             //   Icons.add,
            //             //   size: 40,
            //             //   color: Colors.black54,
            //             // ),
            //           ],
            //         ),
            //       ),
            //     ), 
            //     Container(
            //       height: size.height * 0.2,
            //       width: size.width * 0.2,
            //       decoration: BoxDecoration(
            //         color: kBgColor,
            //         borderRadius: BorderRadius.circular(20),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black12,
            //             blurRadius: 8,
            //             offset: Offset(3, 3),
            //           ),
            //           BoxShadow(
            //             color: Colors.white,
            //             blurRadius: 0,
            //             offset: Offset(-3, -3),
            //           ),
            //         ],
            //       ),
            //       child: Padding(
            //         padding: EdgeInsets.all(15),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   "CAMERA",
            //                   style: TextStyle(
            //                     fontSize: 16,
            //                     fontWeight: FontWeight.bold,
            //                     color: Colors.black54,
            //                   ),
            //                 ),
            //                 // Text(
            //                 //   "NEW CONTROL",
            //                 //   style: TextStyle(
            //                 //     color: Colors.black45,
            //                 //     fontWeight: FontWeight.bold,
            //                 //   ),
            //                 // )
            //               ],
            //             ),
            //             // Icon(
            //             //   Icons.add,
            //             //   size: 40,
            //             //   color: Colors.black54,
            //             // ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(height: size.height * 0.05),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     CustomCard(
            //       size: size * 0.75,
            //       icon: Icon(
            //         Icons.thermostat,
            //         size: 35,
            //         color: Colors.grey.shade400,
            //       ),
            //       title: "TEMP",
            //       statusOn: "OPEN",
            //       statusOff: "LOCKED",
            //     ),
            //     CustomCard(
            //       size: size * 0.75,
            //       icon: Icon(
            //         Icons.opacity_outlined,
            //         size: 35,
            //         color: Colors.grey.shade400,
            //       ),
            //       title: "HUMIDITY",
            //       statusOn: "ON",
            //       statusOff: "OFF",
            //     ),
            //     CustomCard(
            //       size: size * 0.75,
            //       icon: Icon(
            //         Icons.co2,
            //         size: 40,
            //         color: Colors.grey.shade400,
            //       ),
            //       title: "GAS",
            //       statusOn: "ON",
            //       statusOff: "OFF",
            //     ),
            //   ],
            ),
            // SizedBox(height: size.height * 0.025),
            SizedBox(height: size.height * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  key: UniqueKey(),
                  size: size,
                  icon: Icon(
                    Icons.wind_power_outlined,
                    size: 35,
                    color: Colors.grey.shade400,
                  ),
                  title: "FAN",
                  statusOn: "Cool",
                  statusOff: "Off",
                ),
                CustomCard(
                  key: UniqueKey(),
                  size: size,
                  icon: Icon(
                    Icons.water_drop_rounded,
                    size: 35,
                    color: Colors.grey.shade400,
                  ),
                  title: "SPRINGER",
                  statusOn: "Spray",
                  statusOff: "Off",
                ),
              ],
            ),
            SizedBox(height: size.height * 0.025),
            Container(
              height: 180,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                color: kBgColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(3, 3),
                  ),
                  BoxShadow(
                    color: Color.fromARGB(255, 235, 229, 223),
                    blurRadius: 0,
                    offset: Offset(-3, -3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CAMERA",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        // Text(
                        //   "NEW CONTROL",
                        //   style: TextStyle(
                        //     color: Colors.black45,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // )
                      ],
                    ),
                    // Icon(
                    //   Icons.add,
                    //   size: 40,
                    //   color: Colors.black54,
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
