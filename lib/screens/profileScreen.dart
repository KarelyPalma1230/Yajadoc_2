// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor: Color.fromARGB(255, 29, 103, 214),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Row(
            children: [
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Online',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 50,
              ),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/generic-man.jpg'),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: const [
                      Expanded(
                        child: ListTile(
                          title: Text(
                            '76',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          subtitle: Text(
                            'Actividades completas',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ListTile(
                          title: Text(
                            '20',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          subtitle: Text(
                            'Actividades restantes',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ListTile(
                          title: Text(
                            '90%',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          subtitle: Text(
                            'porcentaje cumplimiento',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: const [
                      Text(
                        'Motivación del día: ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: Text(
                          'Lorem ipsum, aurum haec dimitto. Consurgo cibo duo crux damno caput eximietate passim pello. He malus longe. Civis detineo sic.Cui archa obruo. Quae ratum reus ita, doleo rei. Horum minus, maior legis magis, placitum veni. Fors, approbo frux latus.Consisto, facio proficio tibi illas. Pono siligo purgatio infitialis. Multus virgo depulso permissi mos adeo vera. Quies leviculus esse vere.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
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
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 500,
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
                              offset: Offset(
                                  0, 3), // Cambiar la posición de la sombra
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
                              offset: Offset(
                                  0, 3), // Cambiar la posición de la sombra
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
                              offset: Offset(
                                  0, 3), // Cambiar la posición de la sombra
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
                              offset: Offset(
                                  0, 3), // Cambiar la posición de la sombra
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
                              offset: Offset(
                                  0, 3), // Cambiar la posición de la sombra
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
                              offset: Offset(
                                  0, 3), // Cambiar la posición de la sombra
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
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Column(
                      children: const [
                        // aquí colocas la lista de actividades
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // aquí agregas la lógica para cerrar la sesión
                      },
                      child: Text('Cerrar sesión'),
                    ),
                  ],
                )
              ])),
        ));
  }
}
