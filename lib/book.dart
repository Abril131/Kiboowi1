import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';

class MyBook extends StatefulWidget {
  const MyBook({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyBook> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyBook> {
  TextEditingController inicio = TextEditingController();
  TextEditingController fin = TextEditingController();
  TextEditingController nota = TextEditingController();
  TextEditingController reac = TextEditingController();// Nuevo controlador para el tercer TextField

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
              color: miC.withOpacity(0.5),
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
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Titulo',
                                    style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                        color: miColor,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Autor',
                                    style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                        color: miColor,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
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
                                width: 100,
                                height: 150,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Segunda fila (blanca)
                  Expanded(
                    child: Container(
                      color: miW,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Fecha de lectura',
                            style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                color: miColor,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          // Columna con tres TextField
                          Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: inicio,
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                        labelText: 'Inicio',
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: miColor),
                                        ),
                                        labelStyle: GoogleFonts.manrope(
                                          textStyle: TextStyle(color: miColor, fontSize: 15),
                                        ),
                                      ),
                                      style: GoogleFonts.manrope(
                                        textStyle: TextStyle(color: miColor, fontSize: 15),
                                      ),
                                    ),


                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: TextField(
                                      controller: fin,
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                        labelText: 'Fin',
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: miColor),
                                        ),
                                        labelStyle: GoogleFonts.manrope(
                                          textStyle: TextStyle(color: Colors.black, fontSize: 15),
                                        ),
                                      ),
                                      style: GoogleFonts.manrope(
                                        textStyle: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ),

                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              // Tercer TextField
                              TextField(
                                controller: nota,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  labelText: 'Nota',
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: miColor),
                                  ),
                                  labelStyle: GoogleFonts.manrope(
                                    textStyle: TextStyle(color: Colors.black, fontSize: 15),
                                  ),
                                ),
                                style: GoogleFonts.manrope(
                                  textStyle: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                              ),
                              SizedBox(height: 20),
                              // Tercer TextField
                              TextField(
                                controller: reac,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  labelText: 'Reacciones',
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                                style: TextStyle(color: Colors.black, fontSize: 15),
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                 // _showEmojiPicker(context);
                                },
                                child: Text('Mostrar Emojis'),
                              ),
                            ],
                          ),
                        ],
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
