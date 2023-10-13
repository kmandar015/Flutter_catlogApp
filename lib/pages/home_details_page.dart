import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catlog.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Hero(
                tag: Key(
                  catalog.id.toString(),
                ),
                child: Image.network(
                  catalog.image,
                ),
              ),
            ),
            Expanded(
              child: VxArc(
                height: 40,
                edge: VxEdge.top,
                arcType: VxArcType.convey,
                child: Container(
                  width: context.screenHeight,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 64.0,
                    ),
                    child: Column(
                      children: [
                        Text(
                          catalog.name,
                          style: TextStyle(
                            color: MyTheme.darkBluishColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          catalog.desc,
                          style: TextStyle(
                            fontSize: 20,
                            color: MyTheme.darkBluishColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
