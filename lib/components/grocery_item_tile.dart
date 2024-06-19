import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final Color color;
  final VoidCallback onPressed;

  const GroceryItemTile({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 80),
            const SizedBox(height: 8),
            Text(itemName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('\$$itemPrice', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
