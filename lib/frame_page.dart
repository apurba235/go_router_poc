import 'package:flutter/material.dart';
import 'package:get_router_poc/routes.dart';
import 'package:go_router/go_router.dart';

class FramePage extends StatelessWidget {
  FramePage({Key? key, required this.child}) : super(key: key);

  List<String> itemList = ['Bag', 'Cloth', 'Jewellery'];
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // calculateSelectedIndex(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: child,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                itemList.length,
                (index) => GestureDetector(
                  onTap: () {
                    if (index == 0) {
                      context.go('/bagChild');
                    } else if (index == 1) {
                      context.go('/clothChild');
                    } else if (index == 2) {
                      context.go('/jewelChild');
                    }
                  },
                  child: Card(
                    color: calculateSelectedIndex(context) == index
                        ? Colors.lightBlue
                        : Colors.blueGrey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                      child: Text(
                        itemList[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
