import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catlog.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_image.dart';

import 'package:flutter_application_1/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 15),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(30, 20)),
          color: Colors.white,
        ),
        height: 150,
        width: 150,
        child: Row(
          children: [
            Hero(
              tag: Key(
                catalog.id.toString(),
              ),
              child: CatalogImage(catalog: catalog),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    catalog.name,
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      color: MyTheme.darkBluishColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    catalog.desc,
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      color: MyTheme.darkBluishColor,
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${catalog.price.toString()}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            const StadiumBorder(),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            MyTheme.darkBluishColor,
                          ),
                        ),
                        child: const Text(
                          "Add to cart",
                          style: TextStyle(fontSize: 10.0),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
