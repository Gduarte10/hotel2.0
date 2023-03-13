import 'dart:convert';

import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class HospedeModel extends Model {
  String _nome = '';
  String _cpf = '';
  String _email = '';
  String _contato = '';
  String _contatoParente = '';
  String _placaCarro = '';

  String get nome => _nome;
  String get cpf => _cpf;
  String get email => _email;
  String get contato => _contato;
  String get contatoParente => _contatoParente;
  String get placaCarro => _placaCarro;

  Future<void> atualizarDados() async {
    final response = await http.get(Uri.parse('https://strapapi.builtwithdark.com/api/hospede'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      _nome = data['nome'];
      _cpf = data['cpf'];
      _email = data['email'];
      _contato = data['contato'];
      _contatoParente = data['contatoParente'];
      _placaCarro = data['placaCarro'];
      notifyListeners();
    } else {
      throw Exception('Erro ao atualizar dados');
    }
  }
}
