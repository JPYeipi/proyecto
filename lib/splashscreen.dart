import 'package:flutter/material.dart';
import 'package:proyecto/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(08),
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                "images/logo.png",
                width: size.width * 0.3,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: size.height*0.3,
                color: Color.fromARGB(255, 248, 243, 234),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: const Text(
                          'Comienza a descubrir eventos con la app de CulturaMex',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30),
                        ),
                      )
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 11, 25, 87),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        fixedSize: Size(
                          size.width*0.6, size.height*0.05
                        ),
                      ),
                      onPressed: (){
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => const Login()));
                      },
                      child: const Text(
                        'Continuar',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 223),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                "images/ss1.png",
                width: size.width * 0.8,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 220),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                "images/ss2.png",
                width: size.width * 0.32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}