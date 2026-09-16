class Cliente {
  String _nome = "";
  String _cpf = "";
  String _telefone = "";
  String _cnh = "";
  bool _bloqueado = false;

  Cliente({required String nome, required String cpf, required String telefone, required String cnh, bool bloqueado = false})
   {
    this._nome = nome;
    this._cpf = cpf;
    this._telefone = telefone;
    this._cnh = cnh;
    this._bloqueado = bloqueado;
  }

  String get nome {
    return _nome;
  }

  set nome(String nome) {
    this._nome = nome;
  }

  String get cpf {
    return _cpf;
  }

  set cpf(String cpf) {
    this._cpf = cpf;
  }

  String get telefone {
    return _telefone;
  }

  set telefone(String telefone) {
    this._telefone = telefone;
  }

  String get cnh {
    return _cnh;
  }

  set cnh(String cnh) {
    this._cnh = cnh;
  }

  bool get bloqueado {
    return _bloqueado;
  }

  set bloqueado(bool bloqueado) {
    this._bloqueado = bloqueado;
  }

  void liberar() {
    _bloqueado = false;
    print("Cliente $_nome liberado com sucesso!");
  }

  void bloquear() {
    _bloqueado = true;
    print("Cliente $_nome bloqueado!");
  }

  void exibirDados() {
    print("Nome: $_nome | CPF: $_cpf | Tel: $_telefone | CNH: $_cnh | Status: ${_bloqueado ? 'Bloqueado' : 'Liberado'}");
    print("--------------------------------------------------");
  }
}