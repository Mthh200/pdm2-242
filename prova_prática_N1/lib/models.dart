class Endereco {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String cidade;
  final String estado;
  final String cod_ibge;
  final String gia;
  final String ddd;
  final String siafi;

  Endereco({required this.cep, required this.logradouro, required this.complemento, required this.bairro, required this.cidade, required this.estado, 
  required this.cod_ibge, required this.gia, required this.ddd, required, required this.siafi});

  factory Endereco.fromJson(Map<String, dynamic> json) {
    return Endereco(
      cep: json['cep'],
      logradouro: json['logradouro'], 
      complemento: json['complemento'], 
      bairro: json['bairro'],
      cidade: json['localidade'],
      estado: json['uf'],
      cod_ibge: json['ibge'],
      gia: json['gia'],
      ddd: json['ddd'],
      siafi: json['siafi'],
      );
  }

  @override
  String toString() {
    return 'CEP: $cep\nLogradouro: $logradouro\nComplemento: $complemento\nBairro: $bairro\nCidade: $cidade\nEstado: $estado\nCódigo IBGE: $cod_ibge\nGIA: $gia\nDDD: $ddd\nSIAFI: $siafi';
  }
}