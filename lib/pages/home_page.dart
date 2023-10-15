import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/utils/my_routes.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_list.dart';
// import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catlog.dart';
import '../widgets/home_widgets/catalog_header.dart';

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
    await Future.delayed(
      const Duration(seconds: 2),
    );
    var catlogJson = await rootBundle.loadString('assets/files/catalog.json');
    // print(CatlogJson);
    final decodedData = jsonDecode(catlogJson);
    var productData = decodedData["products"];
    Catlog.items = List.from(productData)
        .map<Item>(
          (item) => Item.fromMap(item),
        )
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(
        // backgroundColor: context.theme.buttonTheme.buttonColor,
        onPressed: () => Navigator.pushNamed(context, MyRoute.cartRoute),
        child: const Icon(Icons.shopping_cart_outlined),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CatalogHeader(),
              if (Catlog.items.isNotEmpty)
                const Expanded(child: CatalogList())
              else
                const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}



// appBar: AppBar(
//           title: const Text(
//             "Catlog App",
//             style: TextStyle(
//               color: Colors.black,
//             ),
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: (Catlog.items.isNotEmpty)
//               ? GridView.builder(
//                   itemCount: Catlog.items.length,
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     mainAxisSpacing: 16,
//                     crossAxisSpacing: 16,
//                     crossAxisCount: 2,
//                   ),
//                   itemBuilder: (context, index) {
//                     final item = Catlog.items[index];
//                     return Card(
//                       clipBehavior: Clip.antiAlias,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: GridTile(
//                         header: Text(item.name),
//                         footer: Text(item.price.toString()),
//                         child: Image.network(item.image),
//                       ),
//                     );
//                   })
//               : const Center(
//                   child: CircularProgressIndicator(),
//                 ),
//         ),
//         drawer: const MyDrawer(),
