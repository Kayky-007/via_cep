import 'package:flutter/material.dart';
import 'package:via_cep/model/endereco_modal.dart';

class HomeController {
  TextEditingController entradaCep = TextEditingController();
  String resultado = '';

  Future<String> buscarCep() async {
    // Instanciar um objeto do tipo EnderecoModel
    EnderecoModel endereco = EnderecoModel();
    // Chamar a função buscarCep
    endereco = await EnderecoModel.buscarCep(entradaCep.text);
    return 'CEP: ${endereco.cep}\nLogradouro: ${endereco.logradouro}\nBairro: ${endereco.bairro}Localidade: ${endereco.localidade}\nUF: ${endereco.uf}';
  }
}
