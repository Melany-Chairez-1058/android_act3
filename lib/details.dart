import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {
  Details(
      {Key? key, required this.productName, required this.productDescription, required this.productDireccion, required this.productHorario, required this.productTelefono, required this.productCorreo })
      : super(key: key);

  String productName, productDescription, productDireccion, productHorario, productTelefono, productCorreo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Detalles",
          ),
          //Pop and navigate to previous screen
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Container(
          padding: const EdgeInsets.all(4.0),
          child: ListView(
            children: [
              //Dynamic Tile
              ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
                leading: IconButton(
                  icon: const Icon(Icons.bookmark_added_rounded,
                      color: Color.fromARGB(255, 155, 179, 99)),
                  onPressed: () {},
                ),
                title: Text(
                  productName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                subtitle: Text(productDescription),
                
                
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.grey,
                ),
              ),

              //Static Tiles for design
              ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
                leading: IconButton(
                  icon: const Icon(Icons.location_city,
                      color: Color.fromARGB(255, 155, 179, 99)),
                  onPressed: () {},
                ),
                title: const Text(
                  "Bag",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                subtitle: const Text("Brown Color Bag with straps"),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.grey,
                ),
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
                leading: IconButton(
                  icon: const Icon(Icons.house_rounded, color:Color.fromARGB(255, 155, 179, 99)),
                  onPressed: () {},
                ),
                title: const Text(
                  "Chair",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                subtitle: const Text("Wooden swinging Chair"),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ));
  }
}
