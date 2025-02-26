import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Paola Ramirez Mat:22308051281284"),
          titleTextStyle: const TextStyle(color: Colors.black, fontSize: 17),
          centerTitle: true,
          backgroundColor: const Color(0xffbfbbbb),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centra el contenido verticalmente
            children: <Widget>[
              // Primera fila de iconos
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centra los iconos en la fila
                children: <Widget>[
                  IconWithSubtitle(
                      icon: Icons.music_note,
                      subtitle: 'Musica',
                      color: Colors.purple),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithSubtitle(
                      icon: Icons.favorite,
                      subtitle: 'Me gusta',
                      color: Colors.red),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithSubtitle(
                      icon: Icons.thumb_up,
                      subtitle: 'Like',
                      color: Colors.blue),
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas
              // Segunda fila de iconos
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centra los iconos en la fila
                children: <Widget>[
                  IconWithSubtitle(
                      icon: Icons.bike_scooter,
                      subtitle: 'Bicicleta',
                      color: Color(0xff000000)),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithSubtitle(
                      icon: Icons.share,
                      subtitle: 'Compartir',
                      color: Colors.green),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithSubtitle(
                      icon: Icons.delete,
                      subtitle: 'Eliminar',
                      color: Color(0xff4b4b4b)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
} // fin clase Mis Iconos

class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final String subtitle;
  final Color color;

  const IconWithSubtitle({
    required this.icon,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: color), // Icono con color personalizado
        SizedBox(height: 8), // Espacio entre el icono y el subtítulo
        Text(subtitle, style: TextStyle(fontSize: 16)), // Subtítulo
      ],
    );
  }
}
