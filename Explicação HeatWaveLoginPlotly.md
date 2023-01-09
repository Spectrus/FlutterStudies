---
noteId: "b5d321508fc711edafba31bd04b8bb0e"
tags: []

---

Explicação HeatWaveLoginPlotly


A primeira página do aplicativo Flutter é a página de login. É um widget stateful que exibe um formulário de login com campos de texto 
para que o usuário entre com o seu email e senha, e um botão de login. A classe _LoginPageState gerencia o estado do widget LoginPage
 e define o método build que descreve a interface do usuário do widget.

A segunda página do aplicativo Flutter é a página de mapa de calor. É um widget stateful que exibe um mapa de calor usando a biblioteca Plotly. A classe _HeatmapPageState gerencia o estado do widget HeatmapPage e define o método build que descreve a interface do usuário do widget.

A classe MyApp é um widget stateless que estende a classe StatelessWidget e sobrescreve o método build para retornar um widget MaterialApp. O widget MaterialApp é o widget raiz de um aplicativo Flutter que exibe um aplicativo de design material. Ele tem um título, uma rota inicial e um mapa de rotas que definem a estrutura de navegação do aplicativo.

O bloco void main() => runApp(MyApp()); é o ponto de entrada do aplicativo Flutter. Ele chama a função runApp com o widget MyApp como argumento, o que faz com que o Flutter inicialize o aplicativo e chame o método build do widget MyApp.