// ignore_for_file: unnecessary_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double radius = 10.0; // Inicialize o radius com o valor desejado
    return Scaffold (
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Login',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade200,
                filled: true,
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.grey.shade700,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(radius)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
                Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade200,
                filled: true,
                labelText: 'Senha',
                labelStyle: TextStyle(
                  color: Colors.grey.shade700,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(radius)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        Padding(
  padding: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 12.0),
  child: ElevatedButton(
    onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: const Text('Não foi possivel realizar o login'),
          action: SnackBarAction(
            label:'Fecha', 
            onPressed: (){},
          ),
        ),
      );
    },
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 12.0)
      ),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Substitua Colors.blue pela cor desejada
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0), // Substitua 10.0 pelo raio desejado
        ),
      ),
    ),
    child: const Text('Login'), // Substitua 'Login' pelo texto desejado
  ),
),

        ],
      )
    );
    
  }
}
