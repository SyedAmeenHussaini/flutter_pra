import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  // ignore: unnecessary_null_comparison
  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
                child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.xl4.red800.make(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).primaryColorDark,
                          ),
                          shape: MaterialStateProperty.all(
                            const StadiumBorder(),
                          )),
                      child: "Buy".text.xl.make(),
                    ).wh(80, 40)
                  ],
                ).pOnly(right: 8.0).p24(),
      )
      ,
      body: 
      
      Column(children: [
        Hero(
            tag: (catalog.id.toString()),
            child: Image.network(catalog.image).h40(context)),
        Expanded(
            child: VxArc(
          height: 30, 
          arcType: VxArcType.CONVEY,
          edge: VxEdge.TOP,
          
          child: Container(
              color: Colors.white,
              width: context.screenWidth,
              child: Column(
                children: [
                  catalog.name.text.lg
                      .color(Theme.of(context).primaryColorDark)
                      .bold
                      .xl3
                      .make(),
                      catalog.desc.text.textStyle(TextStyle()).extraBlack.center.xl.make(),
                    10.heightBox,
                    
                    "Super Retina XDR Display, 6.1 inch (Diagonal) All Screen OLED Display, HDR Display, True Tone, Wide Colour (P3), Haptic Touch, 2000000:1 Contrast Ratio (Typical), 625 nits Max Brightness (Typical); 1200 nits Max Brightness (HDR)"
                    .text.textStyle(TextStyle()).color(Colors.black87).xl.make(),
                    
                ],
              ).py24()),
        ))
      ]),
    );
  }
}
