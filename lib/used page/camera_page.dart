import 'package:flutter/material.dart';

class SleepMonitorPage extends StatefulWidget {
  const SleepMonitorPage({super.key});

  @override
  State<SleepMonitorPage> createState() => _SleepMonitorPageState();
}

class _SleepMonitorPageState extends State<SleepMonitorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Sleeping Monitoring",
              style: TextStyle(
                  color: Color(0xFF3E2449),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.menu,
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
                        image: AssetImage("images/Sleeping_baby.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
                
                Positioned(
                    child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 50,
                              width: 130,
                              
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(),
                                  ),
                                child: Table(
                                  border: TableBorder.all(),
                                  children: [
                                    TableRow(children: [
                                      Container(
                                        color: Colors.blue,
                                        child: const Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'Breathing rythm',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Container(
                                        color: Colors.white,
                                        child: const Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("30 rpm",style: TextStyle(fontSize: 18,color: Colors.black54),),
                                          ),
                                        ),
                                      )
                                    ])
                                  ],
                                ),
                              )),
                              const SizedBox(width: 20,),
                              SizedBox(
                              height: 50,
                              width: 130,
                              
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(),
                                  ),
                                child: Table(
                                  border: TableBorder.all(),
                                  children: [
                                    TableRow(children: [
                                      Container(
                                        color: Colors.red.shade400,
                                        child: const Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'Sleep Time',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Container(
                                        color: Colors.white,
                                        child: const Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("53 min",style: TextStyle(fontSize: 18,color: Colors.black54),),
                                          ),
                                        ),
                                      )
                                    ])
                                  ],
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Temprature"),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.thermostat,color: Colors.redAccent.shade200,),
                                const Text("73 °F"),
                              ],
                            ),
                           
                            
                          ],
                        ),
                        const SizedBox(width: 20,),
                        const SizedBox(
                        height: 40,
                        child: VerticalDivider(
                          color: Colors.black, // Set the color of the vertical line
                          thickness: 1, // Set the thickness of the vertical line
                          width: 20, // Set the width of the vertical line
                        ),
                      ),
                      ],
                    ),
                    
                    Column(
                      children: [
                        const Text("Humidity"),
                        Row(
                          children: [
                            Icon(Icons.water_drop,color: Colors.blue.shade300,),
                            const Text("40%")
                          ],
                        ),
                      ],
                    ),
                    
                        const SizedBox(
                        height: 40,
                        child: VerticalDivider(
                          color: Colors.black, // Set the color of the vertical line
                          thickness: 1, // Set the thickness of the vertical line
                          width: 20, // Set the width of the vertical line
                        ),
                      ),
                    Column(
                      children: [
                        const Text("Quality"),
                        Row(
                          children: [
                            Icon(Icons.air,color: Colors.blue.shade300,),
                            const Text("82%")
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade200),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.volume_up_sharp),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade200),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.wallet_giftcard),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade200),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.lightbulb_outline),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade200),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.music_note),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade200),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.mic),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
