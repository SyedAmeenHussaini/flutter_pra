import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class CartPage extends StatelessWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(backgroundColor: Colors.blue,
      title: "Cart".text.make(),
      ),
      body: 
      Column(
        children:  [
          const CartList().p32().expand(),
          const Divider()
        ,const CartTotal()
        ],
      ),
      
    );
  }
}


class CartTotal extends StatelessWidget {
  const CartTotal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.xl4.color(context.theme.hintColor).make(),
          ElevatedButton(onPressed:(){}, 
          style: TextButton.styleFrom(backgroundColor: Colors.purple),
          child: "Buy".text.color(Colors.white).make()).w24(context)
        ],
      ),
    );
  }
}

class CartList extends StatefulWidget {
  const CartList({ Key? key }) : super(key: key);

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder:(context,Index)=>ListTile(
        leading: const Icon(Icons.done),
        trailing: IconButton(
          icon: const Icon(Icons.remove_circle_outline), 
          onPressed: () {},),
          title: "item 1".text.make(),
          
      ) ,
    
    );
  }
}