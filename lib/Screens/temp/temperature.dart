//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_auth/constants.dart';
//import 'package:flutter/painting.dart';
//import 'package:flutter/rendering.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TemperaturePage extends StatefulWidget {
  const TemperaturePage({Key? key}) : super(key: key);

  @override
  _TemperaturePageState createState() => _TemperaturePageState();
}

class _TemperaturePageState extends State<TemperaturePage> {
  double SPRINGER = 12;
  double fan = 15;
  bool light0 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 248, 246),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.indigo,
                    ),
                  ),
                  // const RotatedBox(
                  //   quarterTurns: 135,
                  //   child: Icon(
                  //     Icons.bar_chart_rounded,
                  //     color: Colors.indigo,
                  //     size: 28,
                  //   ),
                  // )
                ],
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 32),
                    CircularPercentIndicator(
                      radius: 180,
                      lineWidth: 14,
                      percent: 0.75,
                      progressColor: Color.fromARGB(255, 142, 158, 128),
                      center: const Text(
                        '26\u00B0',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Center(
                      child: Text(
                        'TEMPERATURE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black54),
                      ),
                    ),
                    // const SizedBox(height: 32),
                    // Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     _roundedButton(title: 'GENERAL', isActive: false),
                    //     _roundedButton(title: 'SERVICES', isActive: true
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(height: 32),
                    // Container(
                    //   padding: const EdgeInsets.symmetric(vertical: 18),
                    //   decoration: BoxDecoration(
                    //     color: Color.fromARGB(255, 254, 251, 251),
                    //     borderRadius: BorderRadius.circular(8),
                    //   ),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       const Padding(
                    //         padding: EdgeInsets.symmetric(horizontal: 24),
                    //         child: Text(
                    //           'SPRINGER',
                    //           style: TextStyle(
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //       ),
                    //       Slider(
                    //         value: SPRINGER,
                    //         onChanged: (newHeating) {
                    //           setState(() => SPRINGER = newHeating);
                    //         },
                    //         max: 30,
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.symmetric(horizontal: 24),
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: const [
                    //              Text('LOW'),
                    //             Text('MID'),
                    //             Text('HIGH'),
                    //           ],
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    // const SizedBox(height: 24),
                    // Container(
                    //   padding: const EdgeInsets.symmetric(vertical: 18),
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(8),
                    //   ),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       const Padding(
                    //         padding: EdgeInsets.symmetric(horizontal: 24),
                    //         child: Text(
                    //           'FAN SPEED',
                    //           style: TextStyle(
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //       ),
                    //       Slider(
                    //         value: fan,
                    //         activeColor: Color.fromARGB(255, 142, 158, 128),
                    //         // thumbColor: Color.fromARGB(255, 192, 196, 189),
                    //         inactiveColor: Color.fromARGB(255, 192, 196, 189),
                    //         onChanged: (newFan) {
                    //           setState(() => fan = newFan);
                    //         },
                    //         max: 30,
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.symmetric(horizontal: 24),
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: const [
                    //             Text('LOW'),
                    //             Text('MID'),
                    //             Text('HIGH'),
                    //           ],
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(height: 24),
                    // Row(
                    //   children: [
                    //     Container(
                    //       width: 100,
                    //       padding: const EdgeInsets.symmetric(vertical: 24),
                    //       decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         borderRadius: BorderRadius.circular(8),
                    //       ),
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: <Widget>[
                    //           const Padding(
                    //             padding: EdgeInsets.symmetric(horizontal: 10),
                    //             child: Text(
                    //               'SPRINGER',
                    //               style: TextStyle(
                    //                 fontWeight: FontWeight.bold,
                    //               ),
                    //             ),
                    //           ),
                    //           Switch(
                    //             value: light0,
                    //             activeColor: Color.fromARGB(255, 142, 158, 128),
                    //             onChanged: (bool value){
                    //               setState(() {
                    //                 light0 = value;
                    //               });
                    //             }
                    //           )
                    //         ],
                    //       ), 
                    //     ),
                    //     const SizedBox(width: 24),
                    //     Container(
                    //       width: 100,
                    //       padding: const EdgeInsets.symmetric(vertical: 24),
                    //       decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         borderRadius: BorderRadius.circular(8),
                    //       ),
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: <Widget>[
                    //           const Padding(
                    //             padding: EdgeInsets.symmetric(horizontal: 10),
                    //             child: Text(
                    //               'SPRINGER',
                    //               style: TextStyle(
                    //                 fontWeight: FontWeight.bold,
                    //               ),
                    //             ),
                    //           ),
                    //           Switch(
                    //             value: light0,
                    //             activeColor: Color.fromARGB(255, 142, 158, 128),
                    //             onChanged: (bool value){
                    //               setState(() {
                    //                 light0 = value;
                    //               });
                    //             }
                    //           )
                    //         ],
                    //       ), 
                    //     ),             
                    //   ],
                    // ),
                    // const SizedBox(height: 24),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 400,
                                  padding: const EdgeInsets.symmetric(vertical: 24),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        child: Text(
                                          'SPRINGER',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Switch(
                                        value: light0,
                                        activeColor: Color.fromARGB(255, 142, 158, 128),
                                        onChanged: (bool value){
                                          setState(() {
                                            light0 = value;
                                          });
                                        }
                                      )
                                    ],
                                  ), 
                                ),
                                Container(
                                  width: 400,
                                  padding: const EdgeInsets.symmetric(vertical: 24),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        child: Text(
                                          'SPRINGER',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Switch(
                                        value: light0,
                                        activeColor: Color.fromARGB(255, 142, 158, 128),
                                        onChanged: (bool value){
                                          setState(() {
                                            light0 = value;
                                          });
                                        }
                                      )
                                    ],
                                  ), 
                                ),
                                const SizedBox(width: 24),
                              ]
                            ),
                          ),
                          const SizedBox(height: 24),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 400,
                                  padding: const EdgeInsets.symmetric(vertical: 24),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        child: Text(
                                          'SPRINGER',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Switch(
                                        value: light0,
                                        activeColor: Color.fromARGB(255, 142, 158, 128),
                                        onChanged: (bool value){
                                          setState(() {
                                            light0 = value;
                                          });
                                        }
                                      )
                                    ],
                                  ), 
                                ),
                                Container(
                                  width: 400,
                                  padding: const EdgeInsets.symmetric(vertical: 24),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        child: Text(
                                          'SPRINGER',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Switch(
                                        value: light0,
                                        activeColor: Color.fromARGB(255, 142, 158, 128),
                                        onChanged: (bool value){
                                          setState(() {
                                            light0 = value;
                                          });
                                        }
                                      )
                                    ],
                                  ), 
                                ),
                                const SizedBox(width: 24),
                              ]
                            ),
                          )
                        ],
                      )
                    )

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     _fan(title: 'FAN 1', isActive: true),
                    //     _fan(title: 'FAN 2', isActive: true),
                    //     _fan(title: 'FAN 3'),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget_fan({
    required String title,
    bool isActive = false,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: isActive ? Color.fromARGB(255, 160, 141, 119) : Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Image.asset(
            isActive ? '../../../assets/images/fan-2.png' : '../../../assets/images/fan-1.png',
          ),
        ),
        const SizedBox(height: 12),
        Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.black87 : Colors.black54,
          ),
        ),
      ],
    );
  }

  Widget_roundedButton({
    required String title,
    bool isActive = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 32,
      ),
      decoration: BoxDecoration(
        color: isActive ? Color.fromARGB(255, 142, 141, 119) : Colors.transparent,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Color.fromARGB(255, 152, 159, 155)),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
