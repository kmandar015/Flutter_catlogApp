import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catlog.dart';
import 'package:flutter_application_1/pages/home_details_page.dart';

import 'package:flutter_application_1/widgets/home_widgets/catalog_item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: Catlog.items.length,
      itemBuilder: (context, index) {
        final catalog = Catlog.items[index];
        return InkWell(
          child: CatalogItem(catalog: catalog),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeDetailPage(catalog: catalog),
              ),
            );
          },
        );
      },
    );
  }
}
