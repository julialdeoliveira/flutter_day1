import 'package:flutter/material.dart';

void main() {
  runApp(
    //método que vai inflar noss app (executar)
    MaterialApp(
      //Um widget que já vem com muitas configurações prontas
      home:
          HomePage(), //Setando que a minha home (tela inicial) será uma homePage
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  //Classe StatelessWidget (sem estado)
  @override
  Widget build(BuildContext context) {
    //método que vai buildar toda vez nossa view passando o context
    // (ajuda a identificar a nossa árvore) retornando um widget
    return Scaffold(
      //esqueleto do app, sempre interessanter ter 1 em cada Page
      appBar: AppBar(), // Widget do próprio Flutter para AppBar
      body: const Center(
        //Widget para centralizar dentro do espaço disponível
        child: Text('Olá mundo'), //Widget para mostrar um texto na tela
      ),
    );
  }
}
