import 'package:flutter/material.dart';

class SwingChairPage extends StatefulWidget {
  const SwingChairPage({super.key});

  @override
  State<SwingChairPage> createState() => _SwingChairPageState();
}

class _SwingChairPageState extends State<SwingChairPage> {
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
                    padding: const EdgeInsets.only(left: 8,top: 15),
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
                            
                          )
                        ),
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
                            
                          )
                        ),
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
