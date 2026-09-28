// immporta a biblioteca principal do flutter que oferece implementação de widgets e comportamentos
// baseados na especificação do Material Design
import 'package:flutter/material.dart';

// Função de nivel superior onde a execução do programa em Dart obrigatoriamente inicia
void main(){
  // Função do flutter que recebe a Widget raiz e o anexa a tela, iniciando o processo de montagen de Widgets
  // O modificador 'const' em 'const MyApp()' instrui ao compilador criar esta instancia em tempo de compilação
  // Otimizando o uso da memoria
  runApp(const MyApp());
}

// Define a classe que herda as propriedades de 'StatelessWidgets'. Isso indica que o componente é estático e
// Imutável; ele nao requer manutenção de estado interno durante o ciclo de vida da aplicação
class MyApp extends StatelessWidget{
  // O construtor constante dessa classe
  // O atributo 'super.key' propaga um identificador para a super classe
  // Que o framwork utiliza internamente para rastrear a identidade do widget durante atualizações de renderização
  const MyApp({super.key});

  // Sobrescreve o metodo build
  // O framework incova este metodo de forma sincrona para obter a hirarquia de widgets que compoem a interface
  // O parametro 'BuildContext' é uma referencia que localiza o widget dentro da arvore de elementos
  @override
  Widget build(BuildContext context) {
    // Widget de nivel superior que configura as intanscias e serviços globais para a aplicação, como navigator, direções de texto, localizações e injeção de tema
    return MaterialApp(
      title: 'Hello world',
      // Instancia um objeto de configuração visual
      theme: ThemeData(useMaterial3: true),
        // Define que o Widget será renderizado na rotina padrão (tela inicial)
        // O Scaffold Implementa restrições de layout padrão do Material design fornecendo slots especificos para organizar a interface
      home: Scaffold(
        // Instancia um componente de barra de aplicativo superior e atribui um Widget de Text estático como seu titulo
        appBar: AppBar(
          title: const Text('Primeiro App')
        ),
        // Define o conteudo principal da tela.
        // O 'Center' é um widget de layout que calcula o espaço disponível e impõe restrições para posicionar seu unico filho no eixo de cordenadas central de sua are util
        body: const Center(
          child: Column(
            // Atributo de alinhamento que instrui a classe Collumn a distribuir seus filhos no centro do seu eixo de alinhamento principal, x ou y
            mainAxisAlignment: MainAxisAlignment.center,
            // Declara uma lista tipada de objetos Widget que serão renderizados dentro da Coluna
            // O uso de const aqui se propaga para todos os nós filhos, eviando realocações na memoria em reconstruções futuras
            children: <Widget>[
              // Widgets de renderização de strings
              // Eles interpretam o texto apssado por parametro e o desenham na tela aplicando as propriedades tipograficas herdadas do ThemeData global
              Text('Hello World'),
              Text('Primeiro codigo em flutter')
            ],
          ),
        ),
        backgroundColor: Colors.white,
      )
    );
    // TODO: implement build

  }
}