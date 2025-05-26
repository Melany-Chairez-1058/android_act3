import 'package:flutter/material.dart';
import 'package:myapp/details.dart';


class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _productController = TextEditingController();
  final _productDesController = TextEditingController();
  final _productDirController = TextEditingController();
  final _productHorController = TextEditingController();
  final _productTelController = TextEditingController();
  final _productCorController = TextEditingController();

  @override
  void dispose() {
    _productController.dispose();
    _productDesController.dispose();
    _productDirController.dispose();
    _productHorController.dispose();
    _productTelController.dispose();
    _productCorController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 142, 151, 95),
            title: const Text("Formulario Sucursal "),
            centerTitle: true),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              MyTextField(
                  myController: _productController,
                  fieldName: "ID",
                  myIcon: Icons.numbers_outlined,
                  prefixIconColor: const Color.fromARGB(255, 143, 158, 102)),
              const SizedBox(height: 10.0),
              //Use to add space between Textfields
              MyTextField(
                  myController: _productDesController,
                  fieldName: "Nombre Sucursal",
                  myIcon: Icons.abc_outlined,
                  prefixIconColor: const Color.fromARGB(255, 143, 161, 101)),
              const SizedBox(height: 20.0),
                MyTextField(
                  myController: _productDirController,
                  fieldName: "Direccion Sucursal",
                  myIcon: Icons.location_on_outlined,
                  prefixIconColor: const Color.fromARGB(255, 143, 161, 101)),
              const SizedBox(height: 20.0),
              
              MyTextField(
                  myController: _productHorController,
                  fieldName: "Horario Sucursal",
                  myIcon: Icons.lock_clock_rounded,
                  prefixIconColor: const Color.fromARGB(255, 143, 161, 101)),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: _productTelController,
                  fieldName: "Sucursal Telefono",
                  myIcon: Icons.numbers_outlined,
                  prefixIconColor: const Color.fromARGB(255, 143, 161, 101)),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: _productCorController,
                  fieldName: " Sucursal Correo",
                  myIcon: Icons.mail,
                  prefixIconColor: const Color.fromARGB(255, 143, 161, 101)),
              const SizedBox(height: 20.0),
              myBtn(context),
            ],

          ),
        ));
  }

  //Function that returns OutlinedButton Widget also it pass data to Details Screen
  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(
              productName: _productController.text,
              productDescription: _productDesController.text,
              productDireccion: _productDirController.text,
              productHorario: _productHorController.text,
              productTelefono: _productTelController.text,
              productCorreo: _productCorController.text,
            );
          }),
        );
      },
      child: Text(
        "Submit Form".toUpperCase(),
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Color.fromARGB(255, 135, 183, 58)),
      ),
    );
  }
}

//Custom STateless WIdget Class that helps re-usability
// You can learn it in Tutorial (2.13) Custom Widget in Flutter
// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  });

  final TextEditingController myController;
  String fieldName;
  final IconData myIcon;
  Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
          labelText: fieldName,
          prefixIcon: Icon(myIcon, color: prefixIconColor),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: const Color.fromARGB(255, 171, 238, 197)),
          ),
          labelStyle: const TextStyle(color: Color.fromARGB(255, 133, 146, 86))),
    );
  }
}
