// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/models/cart.dart';

import 'package:velocity_x/velocity_x.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: Colors.black,
        title: "cart".text.make(),
      ),
      body: Column(
        children: [
          _Cartlist().p32().expand(),
          Divider(),
          CartTotal(),
        ],
      ),
    );
  }
}

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "\$${cart.totalPrice}"
              .text
              .xl5
              .color(context.theme.accentColor)
              .make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: "Buying not supported yet".text.make(),
              ));
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(context.theme.buttonColor)),
            child: "Buy".text.white.make(),
          ).w32(context)
        ],
      ),
    );
  }
}

class _Cartlist extends StatefulWidget {
  const _Cartlist();

  @override
  State<_Cartlist> createState() => _CartlistState();
}

class _CartlistState extends State<_Cartlist> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(_cart.items[index].image),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle_outline),
                    onPressed: () {
                      _cart.remove(_cart.items[index]);
                      setState(() {});
                    },
                  ),
                  title: _cart.items[index].name.text.make(),
                  subtitle: _cart.items[index].desc.text.make(),
                  textColor: Colors.black,
                ));
  }
}
