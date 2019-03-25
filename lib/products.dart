import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return GestureDetector(
      child: Column(
        children: <Widget>[
          Image.asset('assets/macbook.jpg'),
          Text(products[index], style: TextStyle(color: Colors.deepPurple)),
        ],
      ),
      onTap: ()=> Scaffold
          .of(context)
          .showSnackBar(SnackBar(content: Text(index.toString()))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,

    );
  }
  void onTapped(String post) {
    // navigate to the next screen.
  }
}
