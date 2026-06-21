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
      body: SingleChildScrollView(
  child: Padding(
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

              Text('🇺🇾 Culinaria 🇺🇾',
              textAlign: TextAlign.left,
               style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0)
              ),
              ),

              Text('A gastronomia do Uruguai é uma das características mais marcantes da cultura do país. Conhecida pela excelente qualidade de suas carnes, ela tem como destaque o tradicional asado, uma forma de churrasco muito apreciada pelos uruguaios. Além das carnes, diversos pratos e bebidas fazem parte do cotidiano da população e atraem turistas de diferentes partes do mundo.',
               style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 0, 0, 0)
                ),
                
              ),
              SizedBox(height: 10.0),

              Text('Entre as comidas típicas mais famosas está o chivito, um sanduíche criado na década de 1940 na cidade de Punta del Este. Sua receita tradicional leva carne bovina, alface, tomate e pão, mas pode incluir ingredientes como queijo, presunto, bacon, ovo e batata frita. Por ser bastante completo, é considerado uma refeição muito popular no país.',
               style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 0, 0, 0)
                ),
              ),

              SizedBox(height: 10.0),


              Text('Outra especialidade é o chajá, uma sobremesa originária da cidade de Paysandú. Ela é preparada com camadas de creme, merengue, pêssegos e, muitas vezes, doce de leite, ingrediente bastante presente na culinária uruguaia.',
               style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 0, 0, 0)
                ),
              ),

              SizedBox(height: 10.0),

              Text('Entre as bebidas, destacam-se o medio y medio, uma mistura de vinho branco seco com espumante doce, e o tradicional mate uruguaio. Mais do que uma simples bebida, o mate representa um importante símbolo cultural e social do Uruguai, sendo consumido diariamente e compartilhado entre amigos e familiares.',
               style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 0, 0, 0)
                ),
              ),

              SizedBox(height: 10.0),

              Text('Esses pratos e bebidas demonstram a riqueza da gastronomia uruguaia, que faz parte da identidade nacional e preserva tradições passadas de geração em geração.                          ',
               style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 0, 0, 0)
                ),
              ),

          ],
        ),
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
