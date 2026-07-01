import 'package:flutter/material.dart';
import 'package:model_viewer_pro/model_viewer_pro.dart';

class ModelViewerProWidget extends StatefulWidget {
  const ModelViewerProWidget({super.key});

  @override
  State<ModelViewerProWidget> createState() => _ModelViewerProWidgetState();
}

class _ModelViewerProWidgetState extends State<ModelViewerProWidget> {
  final _controller = ModelViewerProController();
  bool isCircleVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          isCircleVisible = !isCircleVisible;
          _controller.setVisibility('Circle', isCircleVisible);
        },
        child: ModelViewerProViewer(
          src: 'assets/wolf.glb',
          controller: _controller,
          cameraControls: true,
          autoRotate: true,
          onLoad: (List<String> meshes) {
            print('Loaded meshes: $meshes');
          },
        ),
      ),
    );
  }
}
