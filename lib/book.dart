import 'package:flutter/material.dart';

class MyBook extends StatefulWidget {
  const MyBook({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyBook> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyBook> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Color miColor = Color(0xFF4D5840);
  Color miB = Color(0xFFDDA15E);
  Color miC = Color(0xFF63843D);
  Color miW = Color(0xFFFAF5ED);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo con la imagen
          Positioned.fill(
            child: Container(
              color: miB,
            ),
          ),
          // Contenido central
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Primera fila (verde)
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Primera columna
                        Expanded(
                          child: Container(
                            color: Colors.transparent,
                            child: Center(
                              child: Text(
                                'Contenido de la primera columna',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Segunda columna
                        Expanded(
                          child: Container(
                            color: Colors.transparent,
                            child: Center(
                              child: Image.asset(
                                'assets/img/imgf2.png',
                                width: 50,
                                height: 100,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Segunda fila (blanca) con TextField
                  Expanded(
                    child: Container(
                      color: miW,
                      padding: EdgeInsets.all(20),
                      child:
                      TextField(
                        controller: email,
                        decoration: InputDecoration(
                          labelText: 'Correo electrónico',
                          prefixIcon: Icon(Icons.email, color: Colors.white, size: 20),
                          fillColor: miColor,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          labelStyle: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  // Resto del contenido...
                ],
              ),
            ),
          ),
          // Botón de regreso
          Positioned(
            top: 40,
            left: 20,
            child: ElevatedButton(
              onPressed: () {
                // Acción para regresar
              },
              child: Center(
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: miColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
