import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';

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
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Autor',
                                    style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                        color: miColor,
                                        fontSize: 15,
                                          fontWeight: FontWeight.w500
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
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
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
                                          textStyle: TextStyle(color: miColor, fontSize: 15, fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      style: GoogleFonts.manrope(
                                        textStyle: TextStyle(color: miColor, fontSize: 15, fontWeight: FontWeight.w500),
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
                                          textStyle: TextStyle(color: miColor, fontSize: 15, fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      style: GoogleFonts.manrope(
                                        textStyle: TextStyle(color: miColor, fontSize: 15, fontWeight: FontWeight.w500),
                                      ),
                                    ),

                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
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
                                    textStyle: TextStyle(color: miColor, fontSize: 15, fontWeight: FontWeight.w500),
                                  ),
                                ),
                                style: GoogleFonts.manrope(
                                  textStyle: TextStyle(color: miColor, fontSize: 15, fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(height: 10),
                              // Tercer TextField
                              TextField(
                                controller: reac,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  labelText: 'Reacción',
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: miColor),
                                  ),
                                  labelStyle: GoogleFonts.manrope(
                                    textStyle: TextStyle(color: miColor, fontSize: 15, fontWeight: FontWeight.w500),
                                    ),
                                  suffixIcon: IconButton(
                                    icon: Icon(Icons.emoji_emotions),
                                    onPressed: () {
                                     // _showEmojiPicker(context);
                                    },
                                  ),
                                ),
                                style: GoogleFonts.manrope(
                                  textStyle: TextStyle(color: miColor, fontSize: 15,fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(height: 20),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Estatus:',
                                  style: GoogleFonts.manrope(
                                    textStyle: TextStyle(
                                      color: miColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                             SizedBox(height: 15),
                              InkWell(
                                onTap: () {
                                  // Acción cuando se toca el botón "Seleccionar"
                                  _showPopupMenu(context); // Definir la función _showPopupMenu más adelante
                                },
                                child: IgnorePointer(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      padding: EdgeInsets.only(right: 50), // Ajusta la cantidad de espacio a la izquierda
                                      height: 30, // ajusta la altura según tus necesidades
                                      width: 250, // ajusta el ancho según tus necesidades
                                      child: TextField(
                                        maxLines: 1,
                                        textAlign: TextAlign.left,
                                        decoration: InputDecoration(
                                          labelText: 'Seleccionar',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(0),
                                          ),
                                          labelStyle: GoogleFonts.manrope(
                                            textStyle: TextStyle(color: miColor, fontSize: 15, fontWeight: FontWeight.w500),
                                          ),
                                          suffixIcon: Icon(Icons.arrow_drop_down),
                                        ),
                                        style: GoogleFonts.manrope(
                                          textStyle: TextStyle(color: miColor, fontSize: 15, fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 30),

                              SizedBox(
                                height: 40, // ajusta la altura según tus necesidades
                                width: 200, // ajusta el ancho según tus necesidades
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Acción para el botón "Guardar"
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: miB, // Puedes cambiar el color según tus preferencias
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Text(
                                    'Guardar',
                                    style: GoogleFonts.manrope(
                                      textStyle: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
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
  // Función para mostrar el menú de opciones
  void _showPopupMenu(BuildContext context) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(1, 600, 0, 50),
      // Puedes ajustar la posición según tus necesidades
      items: <PopupMenuEntry>[
        PopupMenuItem(
          child: Text(
            'Opción 1',
            style: GoogleFonts.manrope(
              textStyle: TextStyle(color: miColor, fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
          value: 'opcion1',
        ),
        PopupMenuItem(
          child: Text(
            'Opción 2',
            style: GoogleFonts.manrope(
              textStyle: TextStyle(color: miColor, fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
          value: 'opcion2',
        ),
        // Agrega más opciones según sea necesario
      ],
    ).then((value) {
      if (value != null) {
        // Acciones según la opción seleccionada
        print('Opción seleccionada: $value');
      }
    });
  }
}


