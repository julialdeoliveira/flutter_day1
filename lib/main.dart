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

    return Scaffold(  //esqueleto do app, sempre interessanter ter 1 em cada Page
      appBar: AppBar(
        title: const Text('Minha barra'),
      ), // Widget do próprio Flutter para AppBar
      body: Center(
        //Widget para centralizar dentro do espaço disponível
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Olá usuário',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
                ),
              ),
            ),
            const Text(
              'Aqui está uma praia',
              style: TextStyle(
                fontSize: 40,
                color: Colors.blue,
              ),
            ),
            Image.network(
                'https://static3.depositphotos.com/1001920/140/i/450/depositphotos_1400122-stock-photo-beach.jpg'),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  textStyle: const TextStyle(fontSize: 40)),
              onPressed: () {
                print('Fui clicado');
                

              },
              child: const Text('Clique aqui'),

            )
          ],
        ),
      ),
    );
  }
  
}
