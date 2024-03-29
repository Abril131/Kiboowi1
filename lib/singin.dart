import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySingIn extends StatefulWidget {
  const MySingIn({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MySingIn> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MySingIn> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Color miColor = Color(0xFF4D5840);
  Color miB = Color(0xFFDDA15E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo con la imagen
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/imgf2.png'),
                fit: BoxFit.cover,
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
          // Contenido central
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              width: 300,
              height: 500,
              padding: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '¡Bienvenido!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  // Resto del contenido del formulario
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                      labelText: 'Correo electrónico',
                      prefixIcon: Icon(Icons.email, color: miColor, size: 20),
                      fillColor: miColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      labelStyle: GoogleFonts.manrope(
                        textStyle: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    style: GoogleFonts.manrope(
                      textStyle: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: password,
                    decoration: InputDecoration(
                      labelText: 'Contraseña',
                      prefixIcon: Icon(Icons.password, color: Colors.white, size: 20),
                      fillColor: miColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      labelStyle: GoogleFonts.manrope(
                        textStyle: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    style: GoogleFonts.manrope(
                      textStyle: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),

                  SizedBox(height: 20),
                  // Botón de registro
                  ElevatedButton(
                    onPressed: () {
                      // Acción para el botón de registro
                    },
                    style: ElevatedButton.styleFrom(
                      primary: miB,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Registrarse',
                          style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Image.asset(
                          'assets/img/kiwi.png',
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
