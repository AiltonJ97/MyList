import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  //Controle de texto
  final TextEditingController tarefaController = TextEditingController();

  //Criando lista
  List<String> tarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  //Ajustar o Textfield para ocupar o tamanho maximo da tela quando
                  //dentro de uma Row.
                  Expanded(
                    child: TextField(
                      controller: tarefaController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Adicione um tarefa',
                        hintText: 'Ex: Estudar Java',
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      String text = tarefaController.text;
                      setState(() {
                        tarefas.add(text);
                      });
                      tarefaController.clear();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff6FFFF7),
                      padding: EdgeInsets.all(14),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ],
              ),
              //Flexible corrige o erro do shrinkWrap.
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    for(String tarefa in tarefas)
                      ListTile(
                        title: Text(tarefa),
                        leading: Icon(Icons.note_alt),
                        onTap: (){
                          print('Tarefa: $tarefa');
                        },
                      ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Você possui 0 terefas pendentes',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Limpar Tudo',
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff6FFFF7),
                      padding: EdgeInsets.all(14),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
