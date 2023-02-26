import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.go('/pageOne/test_my_poc');
                },
                child: const Text('Path Parameter Page test'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  context.go('/pageTwo?id=1&prod=wallet');
                },
                child: const Text('Query Parameter Page'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  context.go('/bagChild');
                },
                child: const Text('Shell Route Sample Page'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
