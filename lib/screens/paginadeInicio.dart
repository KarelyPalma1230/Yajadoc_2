// ignore_for_file: prefer_const_constructors, duplicate_ignore, file_names

import 'package:flutter/material.dart';
import 'package:yajadoc/screens/profileScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = -1;
  final _buttonTextStyle = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shadowColor: Colors.white,
          backgroundColor: Colors.white,
          title: Text(
            'Bienvenido, Practicante',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              icon: const Icon(
                Icons.person_outline_outlined,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      titlePadding: EdgeInsets.zero,
                      contentPadding: const EdgeInsets.all(8.0),
                      backgroundColor: Colors.white,
                      content: const Text(
                        'No tiene notificaciones.',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      title: Container(
                        color: Colors.blue.shade800,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Notificaciones',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            )
          ]),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(9),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color.fromARGB(255, 29, 103, 214),
                    child: Padding(
                      padding: EdgeInsets.all(9),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Marzo / 02 / 2023',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '6 de 10 tareas realizadas',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              'assets/images/thinkinggirl.png',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                child: Text(
                  'Fechas agendadas:',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        backgroundColor: _selectedIndex == 0
                            ? MaterialStateProperty.all<Color>(Colors.amberAccent)
                            : MaterialStateProperty.all<Color>(Colors.white),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(50, 80),
                        ), // establecer el tamaño del botón
                        elevation: MaterialStateProperty.all<double>(10),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '01',
                            style: _selectedIndex == 0
                                ? _buttonTextStyle.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)
                                : _buttonTextStyle.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'SAB',
                            style: _selectedIndex == 0
                                ? _buttonTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)
                                : _buttonTextStyle.copyWith(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        backgroundColor: _selectedIndex == 1
                            ? MaterialStateProperty.all<Color>(Colors.amberAccent)
                            : MaterialStateProperty.all<Color>(Colors.white),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(50, 70),
                        ), // establecer el tamaño del botón
                        elevation: MaterialStateProperty.all<double>(10),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '02',
                            style: _selectedIndex == 1
                                ? _buttonTextStyle.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)
                                : _buttonTextStyle.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'DOM',
                            style: _selectedIndex == 1
                                ? _buttonTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold)
                                : _buttonTextStyle.copyWith(
                                    color: Colors.black,
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 2;
                        });
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        backgroundColor: _selectedIndex == 2
                            ? MaterialStateProperty.all<Color>(Colors.amberAccent)
                            : MaterialStateProperty.all<Color>(Colors.white),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(50, 70),
                        ), // establecer el tamaño del botón
                        elevation: MaterialStateProperty.all<double>(10),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '03',
                            style: _selectedIndex == 2
                                ? _buttonTextStyle.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)
                                : _buttonTextStyle.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'LUN',
                            style: _selectedIndex == 2
                                ? _buttonTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold)
                                : _buttonTextStyle.copyWith(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 3;
                        });
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        backgroundColor: _selectedIndex == 3
                            ? MaterialStateProperty.all<Color>(Colors.amberAccent)
                            : MaterialStateProperty.all<Color>(Colors.white),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(50, 70),
                        ), // establecer el tamaño del botón
                        elevation: MaterialStateProperty.all<double>(10),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '04',
                            style: _selectedIndex == 3
                                ? _buttonTextStyle.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)
                                : _buttonTextStyle.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'MAR',
                            style: _selectedIndex == 3
                                ? _buttonTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold)
                                : _buttonTextStyle.copyWith(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 4;
                        });
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        backgroundColor: _selectedIndex == 4
                            ? MaterialStateProperty.all<Color>(Colors.amberAccent)
                            : MaterialStateProperty.all<Color>(Colors.white),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(50, 70),
                        ), // establecer el tamaño del botón
                        elevation: MaterialStateProperty.all<double>(10),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '05',
                            style: _selectedIndex == 4
                                ? _buttonTextStyle.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)
                                : _buttonTextStyle.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'MIE',
                            style: _selectedIndex == 4
                                ? _buttonTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold)
                                : _buttonTextStyle.copyWith(
                                    color: Colors.black,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 5;
                        });
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        backgroundColor: _selectedIndex == 5
                            ? MaterialStateProperty.all<Color>(Colors.amberAccent)
                            : MaterialStateProperty.all<Color>(Colors.white),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(50, 70),
                        ), // establecer el tamaño del botón
                        elevation: MaterialStateProperty.all<double>(10),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '06',
                            style: _selectedIndex == 5
                                ? _buttonTextStyle.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)
                                : _buttonTextStyle.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'JUE',
                            style: _selectedIndex == 5
                                ? _buttonTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold)
                                : _buttonTextStyle.copyWith(
                                    color: Colors.black,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 6;
                        });
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        backgroundColor: _selectedIndex == 6
                            ? MaterialStateProperty.all<Color>(Colors.amberAccent)
                            : MaterialStateProperty.all<Color>(Colors.white),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(50, 70),
                        ), // establecer el tamaño del botón
                        elevation: MaterialStateProperty.all<double>(10),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '07',
                            style: _selectedIndex == 6
                                ? _buttonTextStyle.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)
                                : _buttonTextStyle.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'VIE',
                            style: _selectedIndex == 6
                                ? _buttonTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold)
                                : _buttonTextStyle.copyWith(
                                    color: Colors.black,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                child: Text(
                  'Actividades del domingo 02 de marzo: ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset:
                                Offset(0, 3), // Cambiar la posición de la sombra
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/images/Doit.png'),
                        title: Row(
                          children: const [
                            Text('Salir a correr con boby'),
                          ],
                        ),
                        subtitle: Text('7:00 AM - 10:00 AM'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset:
                                Offset(0, 3), // Cambiar la posición de la sombra
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/images/Doit.png'),
                        title: Row(
                          children: const [
                            Text('Ir de compras al supermercado'),
                          ],
                        ),
                        subtitle: Text('11:00 AM - 12:00 PM'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset:
                                Offset(0, 3), // Cambiar la posición de la sombra
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/images/Doit.png'),
                        title: Row(
                          children: const [
                            Text('Reunión con el jefe'),
                          ],
                        ),
                        subtitle: Text('2:00 PM - 3:00 PM'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset:
                                Offset(0, 3), // Cambiar la posición de la sombra
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/images/Doit.png'),
                        title: Row(
                          children: const [
                            Text('Reunión con el jefe'),
                          ],
                        ),
                        subtitle: Text('2:00 PM - 3:00 PM'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
               
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset:
                                Offset(0, 3), // Cambiar la posición de la sombra
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/images/Doit.png'),
                        title: Row(
                          children: const [
                            Text('Reunión con el jefe'),
                          ],
                        ),
                        subtitle: Text('2:00 PM - 3:00 PM'),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset:
                                Offset(0, 3), // Cambiar la posición de la sombra
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/images/Doit.png'),
                        title: Row(
                          children: const [
                            Text('Salir a correr con boby'),
                          ],
                        ),
                        subtitle: Text('7:00 AM - 10:00 AM'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset:
                                Offset(0, 3), // Cambiar la posición de la sombra
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/images/Doit.png'),
                        title: Row(
                          children: const [
                            Text('Salir a correr con boby'),
                          ],
                        ),
                        subtitle: Text('7:00 AM - 10:00 AM'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset:
                                Offset(0, 3), // Cambiar la posición de la sombra
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/images/Doit.png'),
                        title: Row(
                          children: const [
                            Text('Salir a correr con boby'),
                          ],
                        ),
                        subtitle: Text('7:00 AM - 10:00 AM'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset:
                                Offset(0, 3), // Cambiar la posición de la sombra
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/images/Doit.png'),
                        title: Row(
                          children: const [
                            Text('Salir a correr con boby'),
                          ],
                        ),
                        subtitle: Text('7:00 AM - 10:00 AM'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
