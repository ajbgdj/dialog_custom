import 'package:dialog_custom/custom_dialog_box.dart';
import 'package:flutter/material.dart';

class Dialogs extends StatefulWidget {
  const Dialogs({Key? key}) : super(key: key);

  @override
  _DialogsState createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Diálogo personalizado em Flutter"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomDialogBox(
                    title: "Demonstração de diálogo personalizada",
                    descriptions: "Este é um diálogo personalizado em flutter e pode ser usado em suas aplicações de flutter",
                    text: "Sim",
                    img: 'image.jpg',
                  );
                });
          },
          child: const Text("Diálogo personalizado"),
        ),
      ),
    );
  }
}
