import 'dart:async';
import 'package:flutter/material.dart';
import 'homescreen.dart'; // Importe o arquivo homescreen.dart

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

    // Aguarde 3 segundos e, em seguida, navegue para a HomeScreen
    Timer(
      Duration(seconds: 3),
          () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
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
          width: 140, // Diâmetro do widget redondo = 70 x 2
          height: 140,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black, // Define a cor do círculo como preto
          ),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70), // Define o raio do círculo
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
