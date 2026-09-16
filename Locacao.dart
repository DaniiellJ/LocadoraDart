import 'Cliente.dart';
import 'Veiculos.dart';

class Locacao {
  Cliente _cliente;
  Veiculos _veiculo;
  int _dias = 0;
  double _valorTotal = 0.0;
  bool _ativa = true;

  Locacao({
    required Cliente cliente,
    required Veiculos veiculo,
    required int dias,
  })  : _cliente = cliente,
        _veiculo = veiculo,
        _dias = dias {
    _veiculo.alterarDisponibilidade(); // Deixa o veículo indisponível
    calcularValor();
  }

  Cliente get cliente {
    return _cliente;
  }

  set cliente(Cliente cliente) {
    this._cliente = cliente;
  }

  Veiculos get veiculo {
    return _veiculo;
  }

  set veiculo(Veiculos veiculo) {
    this._veiculo = veiculo;
  }

  int get dias {
    return _dias;
  }

  set dias(int dias) {
    this._dias = dias;
  }

  double get valorTotal {
    return _valorTotal;
  }

  set valorTotal(double valorTotal) {
    this._valorTotal = valorTotal;
  }

  bool get ativa {
    return _ativa;
  }

  set ativa(bool ativa) {
    this._ativa = ativa;
  }

  void calcularValor() {
    _valorTotal = _dias * _veiculo.calcularDiaria();
  }

  void finalizar() {
    if (_ativa) {
      _ativa = false;
      _veiculo.alterarDisponibilidade(); // Torna o veículo disponível novamente
      print("Locação finalizada com sucesso! Valor total: R\$ $_valorTotal");
    } else {
      print("Esta locação já está inativa.");
    }
  }

  void exibirResumo() {
    print("Locação do Cliente: ${_cliente.nome} | Veículo: ${_veiculo.modelo} (${_veiculo.placa})");
    print("Dias: $_dias | Valor Total: R\$ $_valorTotal | Ativa: ${_ativa ? 'Sim' : 'Não'}");
    print("--------------------------------------------------");
  }
}