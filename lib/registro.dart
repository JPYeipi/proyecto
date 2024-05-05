import 'package:flutter/material.dart';
import 'package:proyecto/inicio.dart';
import 'package:proyecto/login2.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final password = TextEditingController();
  final nombre = TextEditingController();
  final email = TextEditingController();
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
                height: size.height*0.50,
                color: Color.fromARGB(255, 11, 22, 87),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          labelText: 'Email',      
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: password,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: nombre,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          labelText: 'Nombre Completo',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 158, 204, 250),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          fixedSize: Size(
                            size.width*0.6, size.height*0.05
                          ),
                        ),
                        onPressed: (){
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => const Inicio()));
                        },
                        child: const Text(
                          'Continuar',
                          style: TextStyle(color: Color.fromARGB(255, 11, 22, 87), fontSize: 15),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextButton(
                        onPressed: (){
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder:
                              (context) => const Login2()));
                        },
                        child: const Text(
                          '¿Ya tienes cuenta?, Inicia Sesión',
                          style: TextStyle(color: Color.fromARGB(255, 158, 204, 250)),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 325),
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