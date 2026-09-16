# Locadora de Veículos

Aplicação desenvolvida em **Dart** para gerenciar uma locadora de veículos. O sistema permite cadastrar clientes e veículos, realizar e finalizar locações e consultar os registros durante a execução.

## Funcionalidades

- Cadastro de carros, motos e caminhões;
- Cadastro de clientes;
- Listagem de veículos e clientes cadastrados;
- Controle de disponibilidade dos veículos;
- Validação de cliente bloqueado antes de realizar uma locação;
- Realização de locações por quantidade de dias;
- Cálculo do valor total da locação;
- Finalização e consulta de locações ativas e encerradas.

## Regras de diária

| Tipo de veículo | Valor da diária |
| --- | ---: |
| Carro | R$ 150,00 |
| Moto | R$ 90,00 |
| Caminhão | 50% da capacidade de carga em kg |

> Exemplo: um caminhão com capacidade de 1.000 kg possui diária de R$ 500,00.

## Tecnologias e conceitos

- Dart;
- Aplicação de terminal;
- Programação Orientada a Objetos;
- Herança e polimorfismo;
- Encapsulamento com getters e setters;
- Validação de regras de negócio;
- Controle de estado das locações e da disponibilidade dos veículos.

## Pré-requisitos

- [Dart SDK](https://dart.dev/get-dart) instalado;
- Git, caso queira clonar o projeto.

Confira se o Dart está instalado:

```bash
dart --version
```

## Como executar

### 1. Clone o repositório

```bash
git clone https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git
cd SEU_REPOSITORIO
```

Substitua `SEU_USUARIO` e `SEU_REPOSITORIO` pelos dados do seu repositório no GitHub.

### 2. Execute a aplicação

```bash
dart run mainLocadora.dart
```

Também é possível executar diretamente:

```bash
dart mainLocadora.dart
```

## Como usar

Ao iniciar o programa, um menu será exibido no terminal:

```text
1 - Cadastrar carro
2 - Cadastrar moto
3 - Cadastrar caminhão
4 - Cadastrar cliente
5 - Listar veículos
6 - Listar clientes
7 - Realizar locação
8 - Finalizar locação
9 - Consultar locações
0 - Sair
```

Para realizar uma locação, é necessário ter pelo menos um cliente e um veículo cadastrados. O cliente deve estar liberado e o veículo precisa estar disponível.

## Estrutura do projeto

| Arquivo | Responsabilidade |
| --- | --- |
| `mainLocadora.dart` | Ponto de entrada e menu interativo da aplicação |
| `Veiculos.dart` | Classe base dos veículos |
| `Carro.dart` | Modelo de carro e cálculo da diária |
| `Moto.dart` | Modelo de moto e cálculo da diária |
| `Caminhao.dart` | Modelo de caminhão e cálculo da diária |
| `Cliente.dart` | Cadastro, bloqueio e liberação de clientes |
| `Locacao.dart` | Registro, cálculo e finalização das locações |

## Observações

- Os dados são armazenados apenas em memória e são perdidos quando o programa é encerrado.
- O projeto ainda não utiliza banco de dados nem interface gráfica.
- Entradas numéricas devem ser informadas em formato válido para evitar erros durante a execução.

