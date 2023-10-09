import 'package:flutter/material.dart';

import '../widgets/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Catlog App",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: const Center(
          child: Text("Hello"),
        ),
        drawer: const MyDrawer(),
      ),
    );
  }
}
