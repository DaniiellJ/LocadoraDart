import 'dart:io';
import 'locacao.dart';
import 'Veiculos.dart';
import 'Cliente.dart';
import 'Carro.dart';
import 'Moto.dart';
import 'Caminhao.dart';

void main() {
  // Listas para armazenar veículos, clientes e locações
  List<Veiculos> veiculos = [];
  List<Cliente> clientes = [];
  List<Locacao> locacoes = [];

  while (true) {
    print("\n================================");
    print("      LOCADORA DE VEÍCULOS      ");
    print("================================");
    print("1 - Cadastrar carro");
    print("2 - Cadastrar moto");
    print("3 - Cadastrar caminhão");
    print("4 - Cadastrar cliente");
    print("5 - Listar veículos");
    print("6 - Listar clientes");
    print("7 - Realizar locação");
    print("8 - Finalizar locação");
    print("9 - Consultar locações");
    print("0 - Sair");
    stdout.write("Escolha uma opção: ");

    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        print("\n--- CADASTRO DE CARRO ---");
        stdout.write("Placa: ");
        String placa = stdin.readLineSync()!;
        stdout.write("Marca: ");
        String marca = stdin.readLineSync()!;
        stdout.write("Modelo: ");
        String modelo = stdin.readLineSync()!;
        stdout.write("Ano: ");
        int ano = int.parse(stdin.readLineSync()!);
        stdout.write("Número de portas: ");
        int portas = int.parse(stdin.readLineSync()!);
        stdout.write("Tipo de combustivel: ");
        String combustivel = stdin.readLineSync()!;

        veiculos.add(Carro(
          placa: placa,
          marca: marca,
          modelo: modelo,
          ano: ano,
          numeroPortas: portas,
          tipoCombustivel: combustivel,
        ));
        print("Carro cadastrado com sucesso!");
        break;

      case '2':
        print("\n--- CADASTRO DE MOTO ---");
        stdout.write("Placa: ");
        String placa = stdin.readLineSync()!;
        stdout.write("Marca: ");
        String marca = stdin.readLineSync()!;
        stdout.write("Modelo: ");
        String modelo = stdin.readLineSync()!;
        stdout.write("Ano: ");
        int ano = int.parse(stdin.readLineSync()!);
        stdout.write("Cilindradas: ");
        int cilindradas = int.parse(stdin.readLineSync()!);
        stdout.write("Tipo (ex: Esportiva, Custom): ");
        String tipo = stdin.readLineSync()!;

        veiculos.add(Moto(
          placa: placa,
          marca: marca,
          modelo: modelo,
          ano: ano,
          cilindradas: cilindradas,
          tipo: tipo,
        ));
        print("Moto cadastrada com sucesso!");
        break;

      case '3':
        print("\n--- CADASTRO DE CAMINHÃO ---");
        stdout.write("Placa: ");
        String placa = stdin.readLineSync()!;
        stdout.write("Marca: ");
        String marca = stdin.readLineSync()!;
        stdout.write("Modelo: ");
        String modelo = stdin.readLineSync()!;
        stdout.write("Ano: ");
        int ano = int.parse(stdin.readLineSync()!);
        stdout.write("Capacidade de carga (em kg): ");
        double capacidade = double.parse(stdin.readLineSync()!);
        stdout.write("Número de eixos: ");
        int eixos = int.parse(stdin.readLineSync()!);

        veiculos.add(Caminhao(
          placa: placa,
          marca: marca,
          modelo: modelo,
          ano: ano,
          capacidadeCarga: capacidade,
          numeroEixos: eixos,
        ));
        print("Caminhão cadastrado com sucesso!");
        break;

      case '4':
        print("\n--- CADASTRO DE CLIENTE ---");
        stdout.write("Nome: ");
        String nome = stdin.readLineSync()!;
        stdout.write("CPF: ");
        String cpf = stdin.readLineSync()!;
        stdout.write("Telefone: ");
        String telefone = stdin.readLineSync()!;
        stdout.write("CNH: ");
        String cnh = stdin.readLineSync()!;

        clientes.add(Cliente(
          nome: nome,
          cpf: cpf,
          telefone: telefone,
          cnh: cnh,
        ));
        print("Cliente cadastrado com sucesso!");
        break;

      case '5':
        print("\n--- LISTA DE VEÍCULOS ---");
        if (veiculos.isEmpty) {
          print("Nenhum veículo cadastrado.");
        } else {
          // Polimorfismo: a lista guarda Veiculo, mas chama o exibirDados de cada classe específica
          for (var v in veiculos) {
            v.exibirDados();
          }
        }
        break;

      case '6':
        print("\n--- LISTA DE CLIENTES ---");
        if (clientes.isEmpty) {
          print("Nenhum cliente cadastrado.");
        } else {
          for (var c in clientes) {
            c.exibirDados();
          }
        }
        break;

      case '7':
        print("\n--- REALIZAR LOCAÇÃO ---");
        if (clientes.isEmpty || veiculos.isEmpty) {
          print("Atenção: É necessário ter clientes e veículos cadastrados antes de locar!");
          break;
        }

        stdout.write("Digite o CPF do cliente: ");
        String cpfBusca = stdin.readLineSync()!;
        
        Cliente? clienteSel;
        for (var c in clientes) {
          if (c.cpf == cpfBusca) {
            clienteSel = c;
            break;
          }
        }

        if (clienteSel == null) {
          print("Erro: Cliente não encontrado!");
          break;
        }

        // Validação de regra do PDF: Cliente precisa estar liberado
        if (clienteSel.bloqueado) {
          print("Erro: Não é possível realizar locação. Cliente está BLOQUEADO!");
          break;
        }

        stdout.write("Digite a placa do veículo: ");
        String placaBusca = stdin.readLineSync()!;

        Veiculos? veiculoSel;
        for (var v in veiculos) {
          if (v.placa == placaBusca) {
            veiculoSel = v;
            break;
          }
        }

        if (veiculoSel == null) {
          print("Erro: Veículo não encontrado!");
          break;
        }

        // Validação de regra do PDF: Veículo precisa estar disponível
        if (!veiculoSel.disponivel) {
          print("Erro: Veículo indisponível no momento!");
          break;
        }

        stdout.write("Quantidade de dias: ");
        int dias = int.parse(stdin.readLineSync()!);

        // Criando a locação (altera a disponibilidade do veículo internamente)
        locacoes.add(Locacao(
          cliente: clienteSel,
          veiculo: veiculoSel,
          dias: dias,
        ));

        print("Locação realizada com sucesso!");
        break;

      case '8':
        print("\n--- FINALIZAR LOCAÇÃO ---");
        stdout.write("Digite a placa do veículo a ser devolvido: ");
        String placaDevolucao = stdin.readLineSync()!;

        Locacao? locacaoSel;
        for (var l in locacoes) {
          if (l.veiculo.placa == placaDevolucao && l.ativa) {
            locacaoSel = l;
            break;
          }
        }

        if (locacaoSel != null) {
          locacaoSel.finalizar();
        } else {
          print("Nenhuma locação ativa encontrada para este veículo!");
        }
        break;

      case '9':
        print("\n--- CONSULTAR LOCAÇÕES ---");
        if (locacoes.isEmpty) {
          print("Nenhuma locação realizada.");
        } else {
          for (var l in locacoes) {
            l.exibirResumo();
          }
        }
        break;

      case '0':
        print("Saindo do programa...");
        return;

      default:
        print("Opção inválida! Tente novamente.");
    }
  }
}