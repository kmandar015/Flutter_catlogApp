import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.lightCreamColor,
      appBar: AppBar(
        title: Text(
          "Checkout",
          style: TextStyle(
            color: MyTheme.darkBluishColor,
          ),
        ),
      ),
    );
  }
}
