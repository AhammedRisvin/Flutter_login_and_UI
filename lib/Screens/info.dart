import 'package:flutter/material.dart';
import 'package:login_app/Screens/login.dart';

class ScreenInfoo extends StatefulWidget {
  const ScreenInfoo({super.key});

  @override
  State<ScreenInfoo> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenInfoo> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Additional Information'),
        centerTitle: true,
        elevation: 10,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text(
              "Share Dukaan App",
              style: TextStyle(fontSize: 20),
            ),
            leading: const Icon(Icons.share),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward),
            ),
          ),
          ListTile(
            title: const Text(
              "Change Language",
              style: TextStyle(fontSize: 20),
            ),
            leading: const Icon(Icons.language),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward),
            ),
          ),
          ListTile(
            title: const Text(
              "Whatsapp Chat Support",
              style: TextStyle(fontSize: 20),
            ),
            leading: const Icon(Icons.call),
            trailing: Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(
                  () {
                    isSwitched = value;
                  },
                );
              },
              activeTrackColor: Colors.lightGreenAccent,
              activeColor: Colors.green,
            ),
          ),
          const ListTile(
            title: Text(
              " Privacy Policy",
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.lock),
          ),
          const ListTile(
            title: Text(
              "Rate Us",
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.star),
          ),
          ListTile(
            onTap: () {
              signOut(context);
            },
            title: const Text(
              "Sign Out",
              style: TextStyle(fontSize: 20),
            ),
            leading: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
    );
  }

  signOut(BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => const ScreenLogin()),
        (route) => false);
  }
}
