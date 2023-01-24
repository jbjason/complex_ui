import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:complex_ui/screens/switch_app/sw_details/swd_device_switch.dart';
import 'package:complex_ui/screens/switch_app/sw_constatns.dart';

class SwdDeviceContainer extends StatelessWidget {
  const SwdDeviceContainer(
      {Key? key, required this.height, required this.width})
      : super(key: key);
  final double height, width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // available text & Settings icon
            Row(
              children: [
                const SizedBox(width: 10),
                const Icon(Icons.circle, color: Colors.green, size: 16),
                const SizedBox(width: 10),
                Text(
                  'Available Devices',
                  style: GoogleFonts.michroma(
                    textStyle: const TextStyle(color: Colors.white),
                  ),
                ),
                const Spacer(),
                const Icon(CupertinoIcons.selection_pin_in_out,
                    color: Colors.grey),
                const SizedBox(width: 10),
              ],
            ),
            // Switch Container
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SwdDeviceSwitch(
                    width: width,
                    isOn: false,
                    icon: Icons.monitor_outlined,
                    color: button1Color,
                  ),
                  SwdDeviceSwitch(
                    width: width,
                    isOn: true,
                    icon: Icons.lightbulb_outline,
                    color: button2Color,
                  ),
                  SwdDeviceSwitch(
                    width: width,
                    isOn: false,
                    icon: Icons.wifi,
                    color: button3Color,
                  ),
                ],
              ),
            ),
            // tv,Light,Wifi text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _deviceText('TV'),
                _deviceText('LIGHT'),
                _deviceText('WIFI'),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _deviceText(String text) => Text(text,
      style: GoogleFonts.michroma(
        textStyle: const TextStyle(color: Colors.grey, fontSize: 12),
      ));
}
