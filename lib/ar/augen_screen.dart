import 'package:flutter/material.dart';
import 'package:augen/augen.dart';


/// not working on any of our devices, supported only by the pink one but still crashes
class AugenScreen extends StatefulWidget {

  const AugenScreen({super.key});

  @override
  State<AugenScreen> createState() => _AugenScreenState();
}

class _AugenScreenState extends State<AugenScreen> {
  AugenController? _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AugenView(
        onViewCreated: (controller) {
          _controller = controller;
          _initAR();
        },
        config: ARSessionConfig(
          planeDetection: true,
          lightEstimation: true,
        ),
      ),
    );
  }

  Future<void> _initAR() async {
    final supported = await _controller!.isARSupported();
    if (!supported) return;

    await _controller!.initialize(
      ARSessionConfig(planeDetection: true, lightEstimation: true),
    );

    _controller!.planesStream.listen((planes) {
      debugPrint('Detected ${planes.length} planes');
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}