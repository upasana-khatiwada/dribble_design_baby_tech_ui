import 'package:flutter/material.dart';
import 'package:baby_tech/icon_box_property.dart';


class DevicesBox extends StatefulWidget {
  const DevicesBox({super.key});

  @override
  State<DevicesBox> createState() => _DevicesBoxState();
}

class _DevicesBoxState extends State<DevicesBox> {
  List icons = [
    ["images/crib.png","Bed"],
    ["images/swing chair.jpg","Swing Chair"],
    ["images/cam.png","Camera"],
    ["images/light-bulb.png","Lightning"],
    ["images/baby-bath-tub.png","Bath"],
    ["images/feeding-bottle.png","Bottle"],
  ];
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
                    return MyIconBox(
                      icon: icons[index][0],
                      iconName: icons[index][1],
                      
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
