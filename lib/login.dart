import 'package:flutter/material.dart';
import 'package:proyecto/login2.dart';
import 'package:proyecto/registro.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              "images/log1.png",
              height: size.height * 0.329,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              "images/log2.png",
              height: size.height * 0.329,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 245),
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                "images/log3.png",
                height: size.height*0.33
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 245),
            child: Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                "images/log4.png",
                height: size.height * 0.33,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: size.height*0.35,
                color: Color.fromARGB(255, 11, 22, 87),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: const Text(
                          'Explora eventos culturales en México, ¡Bienvenid@!',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        fixedSize: Size(
                          size.width*0.6, size.height*0.05
                        ),
                      ),
                      onPressed: (){
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => const Login2()));
                      },
                      child: const Text(
                        'Iniciar sesión',
                        style: TextStyle(color: Color.fromARGB(255, 11, 22, 87), fontSize: 15),
                      ),
                      
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: TextButton(
                        onPressed: (){
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder:
                              (context) => const Registro()));
                        },
                        child: const Text(
                          '¿Aún no tienes cuenta?, Regístrate',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 205),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "images/log7.png",
                height: size.height * 0.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}