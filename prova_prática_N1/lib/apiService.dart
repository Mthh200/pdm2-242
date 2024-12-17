import 'dart:convert';
import 'dart:io'; 
import 'models.dart'; 

class ApiService {
  static const String baseUrl = 'https://viacep.com.br/ws/';

  Future<Endereco> fetchEndereco(String cep) async {
    try {
      final client = HttpClient();
      final request = await client.getUrl(Uri.parse('$baseUrl$cep/json/')); 
      final response = await request.close();

      if (response.statusCode == 200) {
        final responseBody = await response.transform(utf8.decoder).join();

        print('Resposta JSON da API ViaCEP:');
        print(responseBody);
        print('\n');
        
        Map<String, dynamic> data = json.decode(responseBody);

        return Endereco.fromJson(data);
      } else {
        throw Exception('Falha ao carregar os dados');
      }
    } catch (e) {
      print('Erro: $e');
      rethrow;
    }
  }
}
