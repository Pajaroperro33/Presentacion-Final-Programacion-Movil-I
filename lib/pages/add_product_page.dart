import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/cart_model.dart';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final _nameController = TextEditingController();
  final _priceController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Producto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nombre del Producto'),
            ),
            TextField(
              controller: _priceController,
              decoration: InputDecoration(labelText: 'Precio del Producto'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final name = _nameController.text;
                final price = _priceController.text;
                if (name.isNotEmpty && price.isNotEmpty) {
                  Provider.of<CartModel>(context, listen: false).addProduct(
                    name,
                    price,
                    'lib/images/mac.jpg',
                    Colors.teal,
                  );
                  Navigator.pop(context);
                }
              },
              child: Text('Agregar Producto'),
            ),
          ],
        ),
      ),
    );
  }
}
