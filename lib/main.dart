import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart'; // Importe o arquivo login.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Aguarde 3 segundos e, em seguida, navegue para a tela de login
    Timer(
      Duration(seconds: 3),
          () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Define o fundo como preto
      body: Center(
        child: Container(
          width: 150, // Tamanho da imagem
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black, // Define a cor do círculo como preto
          ),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(75), // Define o raio do círculo
              child: Image.asset(
                'assets/imgs/splash.png', // Substitua pelo caminho da sua imagem de splash
                width: 150,
                height: 150,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
