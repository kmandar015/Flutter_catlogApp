import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/widgets/items.dart';

import '../models/catlog.dart';
import '../widgets/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var CatlogJson = await rootBundle.loadString('assets/files/catalog.json');
    // print(CatlogJson);
    final decodedData = jsonDecode(CatlogJson);
    var productData = decodedData["products"];
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => Catlog.items[0]);
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            },
          ),
        ),
        drawer: const MyDrawer(),
      ),
    );
  }
}
