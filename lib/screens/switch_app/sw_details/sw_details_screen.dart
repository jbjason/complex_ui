import 'package:flutter/material.dart';
import 'package:complex_ui/screens/switch_app/sw_constatns.dart';
import 'package:complex_ui/screens/switch_app/sw_details/swd_body_top.dart';
import 'package:complex_ui/screens/switch_app/sw_details/swd_device_container.dart';
import 'package:complex_ui/screens/switch_app/sw_details/swd_temp_container.dart';

class SwDetailsScreen extends StatelessWidget {
  const SwDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backColor,
      body: Column(
        children: [
          SizedBox(
            height: size.height * .82,
            width: size.width,
            child: Column(
              children: [
                const Expanded(child: SwdBodyTop()),
                SwdDeviceContainer(
                  height: size.height * .35,
                  width: size.width,
                ),
              ],
            ),
          ),
          const Expanded(child: SwdTempContainer()),
        ],
      ),
    );
  }
}
