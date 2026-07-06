import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ModelViewerPlusWidget extends StatelessWidget {
  const ModelViewerPlusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Model Viewer Plus')),
      body: Center(
        child: ModelViewer(
          src: 'assets/wolf.glb',
          ar: true,
          autoRotate: true,
          disableZoom: true,
        ),
      ),
    );
  }
}
