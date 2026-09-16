class Veiculos {
  String _placa = "";
  String _marca = "";
  String _modelo = "";
  int _ano = 0;
  bool _disponivel = true;

  Veiculos({required this._placa, required this._marca, required this._modelo, required this._ano, required this._disponivel});

  String get placa {
    return _placa;
  }

  set placa(String placa) {
    this._placa = placa;
  }

  String get marca {
    return _marca;
  }

  set marca(String marca) {
    this._marca = marca;
  }

  String get modelo {
    return _modelo;
  }

  set modelo(String modelo) {
    this._modelo = modelo;
  }

  int get ano {
    return _ano;
  }

  set ano(int ano) {
    this._ano = ano;
  }

  bool get disponivel {
    return _disponivel;
  }

  set disponivel(bool disponivel) {
    this._disponivel = disponivel;
  }

  void alterarDisponibilidade() {
    _disponivel = !_disponivel;
  }

  double calcularDiaria() {
    return 0;
  }

  void exibirDados() {
    print("Placa: $_placa | Marca: $_marca | Modelo: $_modelo | Ano: $_ano | Disponível: ${_disponivel ? 'Sim' : 'Não'}");
  }
}