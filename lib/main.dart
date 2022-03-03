import 'package:flutter/material.dart'; //paquetes

import 'pages/pruebaStack.dart';
import 'pages/secondScreen.dart';
import 'pages/datosPages.dart';
import 'pages/pruebaStack.dart';

void main() { //llama la funcion princiapl
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Demo Flutter',
    initialRoute: '/',
    routes:{
      '/':(context) => const HomePage(),
      '/second':(context) => const SecondScreeen(),
      '/datos':(context) => const DatosPage(),
      '/stack':(context) => const PruebaStack(),
      '/pruebaStack':(context) => const StackEjemplo()

    },
   // home: HomePage(),
  ));
}
// no sufre cambios StatelessWidget estaticas

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //context en donde estoy
    return Scaffold(
        appBar: AppBar(
          title:const Text('Página inicial'),
          leading: const Icon(Icons.menu),
          elevation: 20.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15)
              )
          ),
          actions: <Widget>[
            IconButton(
              icon:const Icon(Icons.search),
              onPressed: () => {}
              ),
            //IconButton(onPressed: () => {}, icon: Icon(Icons.duo)),
          ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                   
                   Navigator.pushNamed(context, '/second');
                  },
                  child: const Text('Segunda pantalla'),
                ),
                SizedBox(height: 10.0,),
                ElevatedButton(
                  onPressed: () {
                    
                   Navigator.pushNamed(context, '/datos');
                  },
                  child: const Text('Datos'),
                ),
                SizedBox(height: 10.0,),
                ElevatedButton(
                  onPressed: () {
                    
                   Navigator.pushNamed(context, '/stack');
                  },
                  child: const Text('Stack'),
                ),
                SizedBox(height: 10.0,),
                ElevatedButton(
                  onPressed: () {
                    
                   Navigator.pushNamed(context, '/pruebaStack');
                  },
                  child: const Text('Datos Stack'),
                )
              ]
            ),
          ),
            
      );
    
  }
}