import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar(), body: body());
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'VoxScribe',
        style: TextStyle(
          color: Color(0xFF1E6DEB),
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,

      leading: IconButton(
        icon: const Icon(Icons.account_circle_outlined),
        iconSize: 45,
        onPressed: () => print('clicked fr!'),
        padding: const EdgeInsets.only(left: 16.0),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          iconSize: 40,
          onPressed: () => print('clicked!!'),
          padding: const EdgeInsets.only(right: 16),
        ),
      ],
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
            const Text(
              'Welcome bebo!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center
            ),
            const Text(
              'lets transcribe together mate',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
