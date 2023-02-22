import 'dart:developer';

import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key, required this.pathParams});

  final String pathParams;

  @override
  Widget build(BuildContext context) {
    log(pathParams);
    return Scaffold(
      body: Center(
        child: Text('This is path parameters ===> $pathParams'),
      ),
    );
  }
}
