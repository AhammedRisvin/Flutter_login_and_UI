import 'package:flutter/material.dart';

class ScreenPremium extends StatelessWidget {
  const ScreenPremium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.blue,
        title: const Text('Dunkaan Premmium'),
        centerTitle: true,
        elevation: 10,
        // toolbarHeight: 150,
      ),
    );
  }
}
