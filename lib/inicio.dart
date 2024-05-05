import 'package:flutter/material.dart';
import 'package:proyecto/calendario.dart';
import 'package:proyecto/favoritos.dart';
import 'package:proyecto/mapa.dart';
import 'package:proyecto/perfil.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}



class _InicioState extends State<Inicio> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, color: Colors.black),
            label: 'Calendario',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on, color: Colors.black),
            label: 'Ubicación',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.black),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }

   Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return _buildInicio(); // Contenido de la vista de inicio
      case 1:
        return Calendario(); // Vista de calendario
      case 2:
        return Mapa(); // Vista de mapa
      case 3:
        return Favoritos(); // Vista de favoritos
      case 4:
        return Perfil(); // Vista de perfil
      default:
        return Container(); // Si el índice no coincide, muestra un contenedor vacío
    }
  }

  Widget _buildInicio() {
    // Contenido de la vista de inicio
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(
        10, // Aquí puedes ajustar el número de eventos que quieres mostrar
        (index) => _buildCard(index),
      ),
    );
  }

  Widget _buildCard(int index) {
    // Aquí puedes personalizar la apariencia de cada tarjeta de evento
    return Card(
      child: ListTile(
        title: Text('Evento $index'),
        subtitle: Text('Descripción del evento $index'),
        onTap: () {
          // Aquí puedes manejar la acción al hacer clic en la tarjeta del evento
        },
      ),
    );
  }
}