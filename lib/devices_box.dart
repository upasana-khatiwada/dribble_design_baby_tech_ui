import 'package:flutter/material.dart';
import 'package:baby_tech/icon_box_property.dart';
import 'used page/camera_page.dart';
import 'used page/swing_chair.dart';
import 'unused page/bed_page.dart';
import 'unused page/bath_page.dart';
import 'unused page/bottle_page.dart';
import 'unused page/lightpage.dart';

class DevicesBox extends StatefulWidget {
  const DevicesBox({super.key});

  @override
  State<DevicesBox> createState() => _DevicesBoxState();
}

class _DevicesBoxState extends State<DevicesBox> {
  List icons = [
    ["images/crib.png","Bed",const BedPage()],
    ["images/swing chair.jpeg","Swing Chair",const SwingChairPage()],
    ["images/camera.png","Camera",const SleepMonitorPage()],
    ["images/light-bulb.png","Lightning",const LightPage()],
    ["images/baby bath tub.jpeg","Bath",const BathPage()],
    ["images/feeding-bottle.png","Bottle",const BottlePage()],
  ];

  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.1),
                      itemCount: icons.length,
                      
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          // setState(() {
                          //   selectedIndex = index;
                          // });
                          
                        },
                        child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: selectedIndex == index ?Colors.blue: Colors.white,
                        ),
                        child: MyIconBox(
                        icon: icons[index][0],
                        iconName: icons[index][1],
                        page: icons[index][2],
                        
                      ),
                    
                      ),
                      ),
                      
                    );

                  }
                  ),

            ),
          ),
        )
      ],
    );
  }
}
