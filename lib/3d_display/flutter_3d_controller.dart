import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

class Flutter3dControllerWidget extends StatelessWidget {

  final Flutter3DController _controller = Flutter3DController();

  Flutter3dControllerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('3D controller')),
      body: Center(
        child: Flutter3DViewer(
          controller: _controller,
          src: 'assets/wolf.glb',
          onProgress: (double progressValue) {
            debugPrint('Loading progress: $progressValue');
          },
          onLoad: (String modelAddress) {
            debugPrint('Model loaded: $modelAddress');
          },
          onError: (String error) {
            debugPrint('Failed to load model: $error');
          },
        ),
        // TODO: uncomment if you want to use obj file (no texture support, controller cannot be assigned)
        // child: Flutter3DViewer.obj(
        //   src: 'assets/rack.obj',
        //   onProgress: (double progressValue) {
        //     debugPrint('Loading progress: $progressValue');
        //   },
        //   onLoad: (String modelAddress) {
        //     debugPrint('Model loaded: $modelAddress');
        //   },
        //   onError: (String error) {
        //     debugPrint('Failed to load model: $error');
        //   },
        // ),
      ),
    );
  }
}
