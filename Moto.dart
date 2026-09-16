import 'Veiculos.dart';
class Moto extends Veiculos {
  int _cilindradas = 0;
  String _tipo = "";

  Moto({required String placa, required String marca, required String modelo, required int ano, required int cilindradas, required String tipo, bool disponivel = true})
   : super(placa: placa, marca: marca, modelo: modelo, ano: ano, disponivel: disponivel)
  {
    this._cilindradas = cilindradas;
    this._tipo = tipo;
  }

  int get cilindradas {
    return _cilindradas;
  }

  set cilindradas(int cilindradas) {
    this._cilindradas = cilindradas;
  }

  String get tipo {
    return _tipo;
  }

  set tipo(String tipo) {
    this._tipo = tipo;
  }

  @override
  double calcularDiaria() {
    return 90.0;
  }

  @override
  void exibirDados() {
    super.exibirDados();
    print("Tipo: Moto | Cilindradas: ${_cilindradas}cc | Categoria: $_tipo | Diária: R\$ ${calcularDiaria()}");
    print("--------------------------------------------------");
  }
}