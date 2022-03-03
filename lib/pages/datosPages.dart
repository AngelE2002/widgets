import 'package:flutter/material.dart';

class DatosPage extends StatelessWidget {
  const DatosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Página de datos'),
      ),
      body: Center(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: 
          WrapAlignment.center,
          direction: Axis.vertical,
          spacing: 30.0,
          children: <Widget>[
            Image.asset('assets/image/perfil.png', width: 200),
            const Text('Angel Antonio Espinosa Lomeli'),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            )
          ],
          ),
        ),
    );
  }
}