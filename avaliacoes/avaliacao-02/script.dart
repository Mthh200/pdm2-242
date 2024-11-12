// Agregação e Composição
import 'dart:convert';

class Dependente {
  late String _nome;

  Dependente(String nome) {
    this._nome = nome;
  }

  Map<String, dynamic> toJson() {
    return {'nome': _nome};
  }
}

class Funcionario {
  late String _nome;
  late List<Dependente> _dependentes;

  Funcionario(String nome, List<Dependente> dependentes) {
    this._nome = nome;
    this._dependentes = dependentes;
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
      'dependentes': _dependentes.map((d) => d.toJson()).toList(),
    };
  }
}

class EquipeProjeto {
  late String _nomeProjeto;
  late List<Funcionario> _funcionarios;

  EquipeProjeto(String nomeprojeto, List<Funcionario> funcionarios) {
    _nomeProjeto = nomeprojeto;
    _funcionarios = funcionarios;
  }

  Map<String, dynamic> toJson() {
    return {
      'nomeProjeto': _nomeProjeto,
      'funcionarios': _funcionarios.map((f) => f.toJson()).toList(),
    };
  }
  
}

void main() {
  // 1. Criar varios objetos Dependentes
  Dependente dep1 = new Dependente("Mário");
  Dependente dep2 = new Dependente("Maria");
  Dependente dep3 = new Dependente("Paulo");
  Dependente dep4 = new Dependente("Márcio");
  Dependente dep5 = new Dependente("Márcia");
  // 2. Criar varios objetos Funcionario
  Funcionario func1 = new Funcionario("Marcelo", []);
  Funcionario func2 = new Funcionario("Paula", []);
  Funcionario func3 = new Funcionario("Marcela", []);
  // 3. Associar os Dependentes criados aos respectivos
  //    funcionarios
  func1._dependentes = [dep1, dep2];
  func2._dependentes = [dep3];
  func3._dependentes = [dep4, dep5];
  // 4. Criar uma lista de Funcionarios
  List<Funcionario> funcionarios = [func1, func2, func3];
  var funcList = [func1, func2, func3];
  // 5. criar um objeto Equipe Projeto chamando o metodo
  //    contrutor que da nome ao projeto e insere uma
  //    coleção de funcionario
  EquipeProjeto equipe = new EquipeProjeto("Projeto1", funcList);
  // 6. Printar no formato JSON o objeto Equipe Projeto.
  

  print(jsonEncode(equipe.toJson()));
}