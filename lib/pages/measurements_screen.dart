import 'package:flutter/material.dart';

class MeasurementsScreen extends StatefulWidget {
  const MeasurementsScreen({super.key});

  @override
  State<MeasurementsScreen> createState() => _MeasurementsScreenState();
}

class _MeasurementsScreenState extends State<MeasurementsScreen> {
  bool _isMeters = true; // Initial unit is meters

  void _changeUnit() {
    setState(() {
      _isMeters = !_isMeters;
    });
  }

  late final ImageProvider microphoneIcon = const AssetImage('assets/mic.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Samuel Technologies'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display value based on selected unit

            const Text(
              "Gaggles Connected ",
              style: TextStyle(fontSize: 30.0),
            ),

            const SizedBox(height: 20.0),

            Text(
              (_isMeters ? 'distance in meters' : 'distance in centimeters'),
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            // Display actual value (replace with your logic)
            const Text(
              '10.0',
              style: TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 32.0),
            // Toggle button for unit change
            ElevatedButton(
              onPressed: _changeUnit,
              child: Text(
                  _isMeters ? 'Change to Centimeters' : 'Change to Meters'),
            ),
            const SizedBox(height: 36.0),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Image(
                  image: microphoneIcon,
                  width: 70.0,
                  height: 70.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
