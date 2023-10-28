import 'package:flutter/material.dart';

class ScreenPayment extends StatelessWidget {
  const ScreenPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info),
          ),
        ],
        backgroundColor: Colors.blue,
        title: const Text('Payments'),
        centerTitle: true,
        elevation: 10,
      ),
    );
  }
}
