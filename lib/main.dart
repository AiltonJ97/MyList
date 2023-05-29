import 'package:flutter/material.dart';
import 'package:lista_tarefas/list_page.dart';

void main(){
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListPage(),
    );
  }
}

