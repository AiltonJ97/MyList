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
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              //Ajustar o Textfield para ocupar o tamanho maximo da tela quando
              //dentro de uma Row.
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Adicione um tarefa',
                    hintText: 'Ex: Estudar Java',
                  ),
                ),
              ),
              SizedBox(width: 8),
              ElevatedButton(
                onPressed: login,
                child: Text("+"),
              )
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    String text = emailController.text;
    print(text);
  }
}
