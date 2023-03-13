import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'model/user_model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Cadastro de Hóspedes',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: const MyHomePage(title: 'Cadastro de Hóspedes'),
);
}
}

class MyHomePage extends StatefulWidget {
const MyHomePage({Key? key, required this.title}) : super(key: key);

final String title;

@override
MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
final formKey = GlobalKey<FormState>();
String nome = '';
String cpf = '';
String email = '';
String contato = '';
String contatoParente = '';
String placaCarro = '';

@override
Widget build(BuildContext context) {
return ScopedModelDescendant<HospedeModel>(
  builder: (context, child, model) { return Scaffold(
appBar: AppBar(
title: Text(widget.title),
  ),
    body: SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Form(
    key: formKey,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    TextFormField(
    decoration: const InputDecoration(
    hintText: 'Digite seu nome completo',
    labelText: 'Nome',
  ),
    validator: (value) {
    if (value!.isEmpty) {
    return 'Por favor, digite seu nome';
    }
      return null;
      },
        onSaved: (value) {
        nome = value!;
        },
          ),
          TextFormField(
          decoration: const InputDecoration(
          hintText: 'Digite seu CPF',
          labelText: 'CPF',
          ),
          validator: (value) {
          if (value!.isEmpty) {
          return 'Por favor, digite seu CPF';
          }
          return null;
          },
          onSaved: (value) {
          cpf = value!;
          },
            ),
            TextFormField(
            decoration: const InputDecoration(
            hintText: 'Digite seu e-mail',
            labelText: 'E-mail',
            ),
            validator: (value) {
            if (value!.isEmpty) {
            return 'Por favor, digite seu e-mail';
            }
            return null;
            },
            onSaved: (value) {
            email = value!;
            },
              ),
              TextFormField(
              decoration: const InputDecoration(
              hintText: 'Digite seu número de contato',
              labelText: 'Contato',
              ),
              validator: (value) {
              if (value!.isEmpty) {
              return 'Por favor, digite seu número de contato';
              }
              return null;
              },
              onSaved: (value) {
              contato = value!;
              },
                ),
                TextFormField(
                decoration: const InputDecoration(
                hintText: 'Digite o contato de um parente ou responsável',
                labelText: 'Contato de um Parente',
                ),
                validator: (value) {
                if (value!.isEmpty) {
                return 'Por favor, digite o contato de um parente ou responsável';
                }
                return null;
                },
                onSaved: (value) {
                contatoParente = value!;
                },
                  ),
                  TextFormField(
                  decoration: const InputDecoration(
                  hintText: 'Digite a placa do seu carro',
                  labelText: 'Placa do Carro',
                  ),
                  validator: (value) {
                  if (value!.isEmpty) {
                  return 'Por favor, digite a placa do seu carro';
                  }
                  return null;
                  },
                  onSaved: (value) {
                  placaCarro = value!;
                  },
                    ),
                    Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                    onPressed: () {
                    if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    }
                      },
                      child: const Text('Enviar'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}