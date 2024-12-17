import 'apiService.dart'; 
import 'models.dart'; 

void main() async {
  try {
    String cep = '60030030'; 

    ApiService apiService = ApiService();
    Endereco endereco = await apiService.fetchEndereco(cep);
    
    print('Dados formatados:\n');
    print(endereco); 
  } catch (e) {
    print('Erro ao carregar os dados: $e');
  }
}
