import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  ListPage({Key? key}) : super(key: key);

  //Controle de texto
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min, //Altura minima da coluna
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                ),
              ),
              ElevatedButton(
                onPressed: login,
                child: Text('Entrar'),
              )
            ],
          ),
        ),
      ),
    );
  }
  void login(){
    String text = emailController.text;
    print(text);
    //emailController.clear(); limpar campo
    //emailController.text = 'Ailton'; alterar texto do campo
  }
}
