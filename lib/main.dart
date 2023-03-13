import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'check_in.dart';
import 'model/user_model.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final HospedeModel hospedeModel = HospedeModel();

  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
  
    
    return ScopedModel(
      model: hospedeModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cadastro de Hóspedes',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Cadastro de Hóspedes'),
      ),
    );
  }
}
