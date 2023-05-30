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
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                ),
                onChanged: onSubmitted,
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
  }

  //Opção onde o usuario ira precisar aperta o botao
  // para enviar um dado. mais usado em web
  void onSubmitted(String text){
    print(text);
  }
}
  /*void onChanged(String text){
    print(text);
  }
}*/
