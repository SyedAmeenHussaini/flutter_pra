import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/pages/utilits/approut.dart';
import 'package:flutter_catalog/pages/widegts/drawer.dart';
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
          const _CartTotal()
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxConsumer(
            builder: (context, store, status) => "\$${_cart.totalPrice}"
                .text
                .bold
                .xl4
                .color(context.theme.hintColor)
                .make(),
            mutations: {RemoveMutation},
            notifications: {},
          ),
          ElevatedButton(
                  onPressed: () async { 
                 await   Future.delayed(const Duration(seconds: 2));
                    context.vxNav.push(Uri.parse(MyRoutes.homeRoute));
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: "Orederd".text.make()));
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.purple),
                  child: "Buy".text.color(Colors.white).make())
              .w24(context),
        ],
      ),
    );
  }
}

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty
        ? "Nothing to show".text.xl5.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.done),
              trailing: IconButton(
                icon: const Icon(Icons.remove_circle_outline_outlined),
                onPressed: () async {
                  RemoveMutation(_cart.items[index]);
                },
              ),
              title: _cart.items[index].name.text.make(),
            ),
          );
  }
}
