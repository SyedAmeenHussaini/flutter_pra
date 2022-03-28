import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [
          CartList().p32().expand(),
          const Divider(),
          const CartTotal()
        ],
      ),
    );
  }
}

class CartTotal extends StatelessWidget {
  const CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}"
              .text.bold
              .xl4
              .color(context.theme.hintColor)
              .make(),
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: "Buy not valid yet".text.make()));
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.purple),
                  child: "Buy".text.color(Colors.white).make())
              .w24(context)
        ],
      ),
    );
  }
}

class CartList extends StatefulWidget {
  const CartList({Key? key}) : super(key: key);

  

  @override
  State<CartList> createState() => CartListState();
}

class CartListState extends State<CartList> {
  final cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return cart.items.isEmpty
        ? "Nothing to show".text.xl5.makeCentered()
        : ListView.builder(
            itemCount: cart.items.length,
            
            itemBuilder: (context, index) => ListTile(
              leading:  const Icon(Icons.done),
              trailing: IconButton(
                icon:  const Icon(Icons.remove_circle_outline_outlined),
                onPressed: () async {
                  cart.remove(cart.items[index]);
                  setState(() {
                  });
                    
                  
                },
              ),
              title: cart.items[index].name.text.make(),
            ),
          );
  }
}
