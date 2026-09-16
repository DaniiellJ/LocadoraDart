import 'Veiculos.dart';
class Caminhao extends Veiculos {
  double _capacidadeCarga = 0.0;
  int _numeroEixos = 0;

  Caminhao({required String placa, required String marca, required String modelo, required int ano, required double capacidadeCarga, required int numeroEixos, bool disponivel = true})
   : super(placa: placa, marca: marca, modelo: modelo, ano: ano, disponivel: disponivel)
  {
    this._capacidadeCarga = capacidadeCarga;
    this._numeroEixos = numeroEixos;
  }

  double get capacidadeCarga {
    return _capacidadeCarga;
  }

  set capacidadeCarga(double capacidadeCarga) {
    this._capacidadeCarga = capacidadeCarga;
  }

  int get numeroEixos {
    return _numeroEixos;
  }

  set numeroEixos(int numeroEixos) {
    this._numeroEixos = numeroEixos;
  }

  @override
  double calcularDiaria() {
    return 0.50 * _capacidadeCarga;
  }

  @override
  void exibirDados() {
    super.exibirDados();
    print("Tipo: Caminhão | Cap. Carga: ${_capacidadeCarga}kg | Eixos: $_numeroEixos | Diária: R\$ ${calcularDiaria()}");
    print("--------------------------------------------------");
  }
}