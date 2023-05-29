import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'E-mail',
              hintText: 'Exemplo@gmail.com',
              //border: OutlineInputBorder(),
              //errorText: 'Campo obrigatorio',
              prefixText: 'R\$ ', //Inicio do texto fixo
              suffixText: 'cm', suffixStyle: TextStyle(color: Colors.red), //final do texto fixo
              labelStyle: TextStyle(
                fontSize: 40,
              ),
            ),
            style: TextStyle(
              //fontSize: 40, //Tamanho da fonte
              fontWeight: FontWeight.w400, //peso da fonte
              color: Colors.purple,
            ),
            //keyboardType: TextInputType.number,
            //keyboardType: TextInputType.emailAddress,
            //obscureText: true, //Esconder texto
            //obscuringCharacter: 'Y', // Modificar caractere
          ),
        ),
      ),
    );
  }
}
