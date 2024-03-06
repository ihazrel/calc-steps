import 'dart:io';

import 'package:calc_steps/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isIOS) {
    setWindowTitle('Calculator Step');
    setWindowMaxSize(const Size(1280, 720));
    setWindowMinSize(const Size(1280, 720));
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
