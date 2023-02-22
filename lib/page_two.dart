import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key, required this.queryParams, required this.prodCat});

  final String queryParams;
  final String prodCat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            'This is query parameters ===> product_id is $queryParams and product_name is $prodCat'),
      ),
    );
  }
}
