# Crie uma  implementação de um código Dart que usa uma API Http para acessar um serviço na Web. Mostre os dados acessados pela API no formato JSON.

## A evidencia da realização da atividade será: Criação de uma pasta no repositório GitHub e registro de link do GitHub no Google Classroom.
## Requisitos Funcionais:

1. Requisições HTTP:
   - O sistema deve realizar requisições do tipo GET para acessar dados de uma API externa.
   - O sistema deve ser capaz de lidar com erros de rede e retornar mensagens apropriadas.

2. Processamento de Dados:
   - Os dados recebidos da API devem ser processados e convertidos de JSON para objetos Dart.
   - O sistema deve exibir os dados processados em um formato legível.

3. Estrutura do Código:
   - O código deve ser modular, com separação clara entre as responsabilidades (ex: repositório, modelo, e lógica de apresentação).
   - O uso de pacotes externos, como o `http`, deve ser documentado e justificado.

4. Formato dos Dados:
   - Os dados acessados pela API devem estar no formato JSON e devem incluir pelo menos três campos: `id`, `name`, e `description`.


Exemplo de Dados JSON

Os dados acessados pela API podem ter o seguinte formato:

```json
[
  {
    "id": 1,
    "name": "Item A",
    "description": "Descrição do Item A"
  },
  {
    "id": 2,
    "name": "Item B",
    "description": "Descrição do Item B"
  },
  {
    "id": 3,
    "name": "Item C",
    "description": "Descrição do Item C"
  }
]
```
