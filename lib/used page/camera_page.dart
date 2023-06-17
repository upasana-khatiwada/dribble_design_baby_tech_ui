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
                      Row(
                        children: [
                          Container(
                            height: 80,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                            // child: const Column(
                            //   children: [
                            //     Text('Breathing Rythm'),
                            //     Divider(
                            //       color: Colors.blue,
                            //       height: 1,
                            //       thickness: 2,
                            //       indent: 1,
                            //       endIndent: 1,
                            //     ),
                            //     Text('Sleep Time'),
                            //   ],
                            // ),
                            child: Table(
                              border: TableBorder.all(),
                              children: [
                                TableRow(
                                  children: [
                                    Container(
                                      color: Colors.blue,
                                      child: const Center(child: Text('Breathing '),),
                                    ),
                                  ]
                                ),
                                TableRow(
                                  children: [
                                    Container(color: Colors.white,
                                    child: const Center(child: Text("Sleep Time"),),)
                                  ]
                                )
                              ],
                            )
                          )
                        ],
                      )
                    ],
                  ),
                ))
              ],
            )
          ],
        )),
      ),
    );
  }
}
