import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyStateFulWidget extends StatefulWidget {
 const MyStateFulWidget({Key? key}) : super(key: key);

  @override
  State<MyStateFulWidget> createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  late TextEditingController _controller; 
  bool _isChecked = false;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(); 
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              TextField(
                keyboardType: TextInputType.emailAddress,
                autofocus: true,
                controller: _controller,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.contact_mail),
                  labelText: 'Correo',
                  hintText: 'micorreo@correo.com'
                 ),

              ),
              const SizedBox(height: 20.0),
              const TextField(
                obscureText: true,
                 decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Contraseña',
                 ),
              ),
              const SizedBox(height: 20.0),
               TextField(
                 keyboardType: TextInputType.number, 
                 inputFormatters: [
                   FilteringTextInputFormatter.allow(
                     RegExp('[0-9 -]')
                   ),
                   LengthLimitingTextInputFormatter(16)
                 ],
                 decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.credit_card),
                  labelText: 'Tarjeta',
                  hintText: '1234-1234-1234-1234'
                 ),
              ),
              const SizedBox(height: 20.0),
              
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Primero'),
                  value: _isChecked, 
                  onChanged: (bool? value) {
                    setState(() { 
                      _isChecked = value!;
                    });
                   },

                ),
              const SizedBox(height: 10.0),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Segundo'),
                  value: _isChecked, 
                  onChanged: (bool? value) {
                    setState(() { 
                      _isChecked = value!;
                    });
                   },

                ),
              const SizedBox(height: 10.0),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Tercero'),
                  value: _isChecked, 
                  onChanged: (bool? value) {
                    setState(() { 
                      _isChecked = value!;
                    });
                   },

                )    

            ], 
          ),
        ),
        ),
    );
  }
}
