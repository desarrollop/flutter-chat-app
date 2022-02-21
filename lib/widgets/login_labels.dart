import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String pregunta;
  final String textoOpcion;

  const Labels(
      {Key? key,
      required this.ruta,
      required this.pregunta,
      required this.textoOpcion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            this.pregunta,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            child: Text(this.textoOpcion,
                style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            onTap: () {
              Navigator.pushReplacementNamed(context, this.ruta);
            },
          ),
        ],
      ),
    );
  }
}
