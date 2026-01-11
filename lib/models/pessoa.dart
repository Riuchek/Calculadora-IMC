class Pessoa {
  final String nome;
  final double peso;
  final double altura;

  Pessoa({
    required this.nome,
    required this.peso,
    required this.altura,
  });


  void validarDados() {
    if (nome.isEmpty) {
      throw ArgumentError('Nome é obrigatório');
    }
    if (peso <= 0) {
      throw ArgumentError('Peso deve ser maior que zero');
    }
    if (altura <= 0) {
      throw ArgumentError('Altura deve ser maior que zero');
    }
  }

  double calcularImc() {
   validarDados();
   return peso / (altura * altura);
  }
}