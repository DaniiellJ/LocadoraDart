import 'Veiculos.dart';

class Carro extends Veiculos {
  int _numeroPortas = 0;
  String _tipoCombustivel = "";

  Carro({
    required String placa, required String marca, required String modelo, required int ano, required int numeroPortas, required String tipoCombustivel, bool disponivel = true})
     : super(placa: placa, marca: marca, modelo: modelo, ano: ano, disponivel: disponivel)
  {
    this._numeroPortas = numeroPortas;
    this._tipoCombustivel = tipoCombustivel;
  }

  int get numeroPortas {
    return _numeroPortas;
  }

  set numeroPortas(int numeroPortas) {
    this._numeroPortas = numeroPortas;
  }

  String get tipoCombustivel {
    return _tipoCombustivel;
  }

  set tipoCombustivel(String tipoCombustivel) {
    this._tipoCombustivel = tipoCombustivel;
  }

  @override
  double calcularDiaria() {
    return 150.0;
  }

  @override
  void exibirDados() {
    super.exibirDados();
    print("Tipo: Carro | Portas: $_numeroPortas | Combustível: $_tipoCombustivel | Diária: R\$ ${calcularDiaria()}");
    print("--------------------------------------------------");
  }
}
