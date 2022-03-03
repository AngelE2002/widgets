import 'package:flutter/material.dart';

class StackEjemplo extends StatelessWidget{
  const StackEjemplo({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title:const Text('Página Datos Stack'),
    ),
    body: Center(
      child: SizedBox(
        //width: 300.0,
       // height: 300.0,
        child: Center(
          child: Stack(
            children: <Widget>[
              Container(
                width: 500,
                height: 500,
                child: Image.asset('assets/image/perfil.png',
                      height: 400,
                      ),
              ),
              Positioned(
                 top: 240.0,
                 left: 120.0,
                 child: Container(
                   child: const Text('Angel Antonio Espinosa Lomeli',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    
                      fontWeight: FontWeight.bold,
                    
                    )
                  
                  ),
                 )
              ),
              Positioned(
                 top: 280.0,
                 left: 160.0,
                 child: Container(
                   child: ElevatedButton(
                     onPressed: () {
                      Navigator.pop(context);
                    },
                     child: const Text('Regresar'),),
                 )
              )




                
            ],
          ),

        ),
        )
     
      ),
  );
}

}