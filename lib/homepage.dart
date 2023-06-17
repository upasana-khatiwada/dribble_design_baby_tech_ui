import 'package:flutter/material.dart';
import 'package:baby_tech/devices_box.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return   DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xFFFBDB9E),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Baby Devices",style: TextStyle(color: Color(0xFF3E2449),fontSize: 24,fontWeight: FontWeight.bold),),
                       Icon(Icons.menu),
                ]),
                const SizedBox(height: 20,),
                TabBar(
                  isScrollable: true,
                  labelStyle: const TextStyle(fontSize: 18,color: Colors.black),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black54, 
                    indicator:  BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                    

                    tabs: const [
                      Tab(
                        text: "All",
                      ),
                      Tab(
                        text: "Kitchen",
                      ),
                      Tab(
                        text: "BedRoom",
                      ),
                      Tab(
                        text: "BathRoom",
                      ),
                    ],
                ),
                const DevicesBox(),
    
              ],
            ),
          ),
        ),
      ),
    );
  }
}