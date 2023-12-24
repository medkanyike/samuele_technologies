import 'package:flutter/material.dart';
import 'package:samule_technologies/pages/measurements_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool _isConnected = false;

  @override
  void initState() {
    super.initState();
    _simulateBluetoothConnection();
  }

  void _simulateBluetoothConnection() async {
    await Future.delayed(
        const Duration(seconds: 4)); // Simulate a 4-second delay
    setState(() {
      _isConnected = true;
    });
    if (_isConnected) {
      // ignore: use_build_context_synchronously
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const PopScope(
            canPop: false,
            child: MeasurementsScreen(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Samuel Technologies'),
      ),
      body: Center(
        child: _isConnected
            ? const Text('Bluetooth Connected')
            : const Text('Connecting to Bluetooth...'),
      ),
    );
  }
}
