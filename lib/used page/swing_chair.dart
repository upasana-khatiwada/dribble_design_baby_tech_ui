import 'package:flutter/material.dart';

class SwingChairPage extends StatefulWidget {
  const SwingChairPage({super.key});

  @override
  State<SwingChairPage> createState() => _SwingChairPageState();
}

class _SwingChairPageState extends State<SwingChairPage> {
  int intensity = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Swing Chair",
              style: TextStyle(
                  color: Color(0xFF3E2449),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.format_align_right_rounded,
              color: Color(0xFF3E2449),
            )
          ],
        ),
        backgroundColor: const Color(0xFFFBDB9E),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 440,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                        image: AssetImage("images/swing.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.deepPurple.shade300,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.power_settings_new),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.deepPurple.shade300,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.music_note),
                            )),
                      )
                    ],
                  ),
                ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text("Time Left"),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue.shade100),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 10, right: 35),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.av_timer,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text("0:20:34"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Angle"),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue.shade100),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, bottom: 5, left: 10, right: 35),
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blue.shade100,
                                      // image: const DecorationImage(
                                      //   image: AssetImage("images/angle.jpeg"),
                                      //   fit: BoxFit.cover,

                                      // ),
                                    ),
                                    child: Image.asset(
                                      "images/angle.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text("42 °"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Swing Mode",
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepPurple.shade100),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepPurple.shade100,
                          ),
                          child: Image.asset(
                            "images/rocking-chair.png",
                            fit: BoxFit.contain,
                            color: Colors.deepPurple.shade400,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepPurple.shade100),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.drive_eta_rounded,color: Colors.deepPurple.shade400,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepPurple.shade100),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.nightlight_round,color: Colors.deepPurple.shade400,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepPurple.shade100),
                        child:  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "images/kangaroo.png",
                            fit: BoxFit.contain,
                            color: Colors.deepPurple.shade600,
                          ),
                          
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepPurple.shade100),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.air,color: Colors.deepPurple.shade400,),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10,),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Intensity",
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: const Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: const Color(0xFFEB1555),
                      overlayColor: const Color(0x29EB1555),
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                        value: intensity.toDouble(),
                        min: 0,
                        max: 5,
                        activeColor: const Color(0xFFEB1555),
                        inactiveColor: const Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          setState(() {
                           
                            intensity = newValue.round();
                          });
                        }),
                  ),
                  ],
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
