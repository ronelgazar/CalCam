import 'package:calcam/Utils/Logger.dart';
import 'package:calcam/services/recognizer.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CameraHelper {
  static CameraController camera;

  static bool isDetecting = false;
  static CameraLensDirection _direction = CameraLensDirection.back;
  static Future<void> initializeControllerFuture;

  static Future<CameraDescription> _getCamera(CameraLensDirection dir) async {
    return await availableCameras().then(
      (List<CameraDescription> cameras) => cameras.firstWhere(
        (CameraDescription camera) => camera.lensDirection == dir,
      ),
    );
  }

  static void initializeCamera() async {
    Logger.log("_initializeCamera", "Initializing camera..");

    camera = CameraController(
        await _getCamera(_direction),
        defaultTargetPlatform == TargetPlatform.iOS
            ? ResolutionPreset.low
            : ResolutionPreset.high,
        enableAudio: false);
    initializeControllerFuture = camera.initialize().then((value) {
      Logger.log(
          "_initializeCamera", "Camera initialized, starting camera stream..");

      camera.startImageStream((CameraImage image) {
        if (!RecognitionClassifier.modelLoaded) return;
        if (isDetecting) return;
        isDetecting = true;
        try {
          RecognitionClassifier.classifyImage(image);
        } catch (e) {
          print(e);
        }
      });
    });
  }
}