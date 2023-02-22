import 'package:flutter/material.dart';

class BagChild extends StatelessWidget {
  const BagChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProductCard(
      cardText: 'This is a Bag Details',
      color: Colors.indigoAccent.withOpacity(0.5),
    );
  }
}

class ClothChild extends StatelessWidget {
  const ClothChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProductCard(
      cardText: 'This is a Cloth Details',
      color: Colors.orangeAccent.withOpacity(0.5),
    );
  }
}

class JewelleryChild extends StatelessWidget {
  const JewelleryChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProductCard(
      cardText: 'This is a Jewellery Details',
      color: Colors.greenAccent.withOpacity(0.5),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.cardText,
    required this.color,
  });

  final String cardText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Center(
        child: Text(
          cardText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
