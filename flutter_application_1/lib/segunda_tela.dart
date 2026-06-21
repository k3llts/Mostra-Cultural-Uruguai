import 'package:flutter/material.dart';

class SegundaTela extends StatefulWidget {
  const SegundaTela({super.key});

  @override
  State<SegundaTela> createState() => _SegundaTelaState();
}

class _SegundaTelaState extends State<SegundaTela> {
  final _formKey = GlobalKey<FormState>();// usado para identificar o formulário e acessar seu estado, permitindo a validação dos campos de entrada.

  final TextEditingController _nomeController = TextEditingController(); //usado para controlar o texto digitado pelo usuário em um campo de texto.
  final TextEditingController _mensagemController = TextEditingController();// mema coisa.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
  title: const Text("Conte-nos a sua experiência!"),
  leading: IconButton(
    icon: const Icon(Icons.arrow_back),
    tooltip: "Voltar", //aqui você controla o texto que aparece quando o usuário passa o mouse sobre o botão de voltar.
    onPressed: () {
      Navigator.pop(context);
    },
  ),
),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              TextFormField(
                controller: _nomeController,
                decoration: const InputDecoration(
                  labelText: "Seu nome",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Digite seu nome";
                  }// caso vc não preencha o campo, ele vai retornar a mensagem "Digite seu nome" para o usuário. Se o campo estiver preenchido, a função de validação retorna null, indicando que não há erros de validação.
                  return null;
                },
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: _mensagemController,
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: "Sua mensagem",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Digite uma mensagem";
                  }// caso você não preencha o campo, ele vai retornar a mensagem "Digite uma mensagem" para o usuário. Se o campo estiver preenchido, a função de validação retorna null, indicando que não há erros de validação.
                  return null;
                },
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    String nome = _nomeController.text; //aqui ele pega o texto que o usuario digitou no campo e usa o texto para criar a mesagem de agradecimento personalizado.
                    String mensagem = _mensagemController.text;

                    print("Nome: $nome"); // copiar nome para outras possíveis partes do codigo.
                    print("Mensagem: $mensagem"); // copiar mensagem para possíveis outras partes do codigo.

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Obrigado pelo feedback, $nome!"), // aqui ele pega o nome digitado anteriormente na string nome e insere na mensagem de agradecimento.
                      ),
                    );

                    _nomeController.clear();
                    _mensagemController.clear();
                    // após o usuário enviar a mensagem, os campos de texto são limpos.
                  }
                },
                child: const Text("Enviar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}