import 'package:flutter/material.dart';
import 'segunda_tela.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'Uruguai',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 255, 238, 0)),
      ),
      home: const MyHomePage(title: 'Uruguai Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 158, 205, 248),
      appBar: AppBar(
       
        backgroundColor: Colors.lightBlue,
       
      leading: 
      IconButton(onPressed: () {} , icon:const Icon(Icons.menu),),

      actions: [
        IconButton(onPressed: () {} , icon:const Icon(Icons.attach_money_sharp)),
        IconButton(onPressed: () {} , icon:const Icon(Icons.account_circle_rounded))
      ],

        title: Text(widget.title),
      ),
      body: Padding(
  padding: const EdgeInsets.all(16.0),       
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,// isso alinha os textos à esquerda, caso queira centralizar, use CrossAxisAlignment.center.          
          children: [
            Text(
              '🇺🇾 Seja bem-vindo ao site do Uruguai! 🇺🇾',
             
              textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 238, 255, 0)
              ),
              ),
              SizedBox(height: 20.0),// adiciona um pequeno espaço entre os textos
              Text(
                'Aqui você encontrará informações sobre as melhores atrações turísticas, gastronomia e cultura do Uruguai. Explore nosso site para planejar sua viagem e descobrir tudo o que este país encantador tem a oferecer!',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 0, 0, 0)
                ),
              ),

              SizedBox(height: 20.0),

              Text('🇺🇾 História do Uruguai 🇺🇾',
              textAlign: TextAlign.left,
               style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0)
              ),
              ),

              SizedBox(height: 20.0),

              Text('O Uruguai é um país localizado no sul da América do Sul, entre o Brasil e a Argentina. Apesar de possuir um território relativamente pequeno, sua história teve grande importância para a formação da região do Rio da Prata. Antes da chegada dos europeus, o território era habitado principalmente pelos povos indígenas Charruas. Durante os séculos XVI e XVII, a área foi disputada por espanhóis e portugueses devido à sua posição estratégica. Após diversos conflitos e movimentos de independência, o Uruguai tornou-se um país independente em 1828. Desde então, desenvolveu instituições democráticas sólidas e conquistou reconhecimento internacional por sua estabilidade política, qualidade de vida e avanços sociais.',
               style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 0, 0, 0)
                ),
              ),  
              
              Text('🇺🇾 Cultura do Uruguai 🇺🇾',
              textAlign: TextAlign.left,
               style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0)
              ),
              ),

              SizedBox(height: 20.0),

              Text('A cultura uruguaia é resultado da mistura de influências indígenas, europeias e africanas. Um dos costumes mais marcantes do país é o hábito de tomar mate, bebida tradicional que faz parte do cotidiano da população. O futebol também possui um papel importante na identidade nacional, já que o Uruguai foi o primeiro campeão da Copa do Mundo, em 1930. A gastronomia é conhecida pelo uso frequente de carnes, especialmente nos tradicionais churrascos chamados de asado, além do famoso chivito, um sanduíche típico do país. Outra característica cultural importante é o Carnaval uruguaio, considerado um dos mais longos do mundo, com apresentações musicais e artísticas que acontecem durante várias semanas. O país também preserva manifestações culturais como o candombe, ritmo de origem africana reconhecido como patrimônio cultural da humanidade.',
               style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 0, 0, 0)
                ),
              ),  

              SizedBox(height: 20.0),

          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton.extended(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SegundaTela()),
    );
  },
  icon: const Icon(Icons.add_comment_outlined),
  label: const Text('Fale conosco'),
),
    );
  }
}
