import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Container(
          height: 150,
          width: double.infinity,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(50),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: FittedBox(
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "Limits/Off/On",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                    CupertinoSwitch(
                      activeColor: Colors.blue,
                      value: _isSwitched,
                      onChanged: (bool value) {
                        setState(() {
                          _isSwitched = value;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text(
                      "Maximum =",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Chip(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: const Text(
                        "20",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
