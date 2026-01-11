import 'package:flutter_test/flutter_test.dart';
import 'package:calculadora_imc/models/pessoa.dart';

void main() {
  test('Calcula IMC corretamente', () {
    final pessoa = Pessoa(
      nome: 'João',
      peso: 78,
      altura: 1.65,
    );

    final imc = pessoa.calcularImc();

    expect(imc, closeTo(28.65, 0.01));
  });

  test('Altura zero deve lançar erro', () {
    final pessoa = Pessoa(
      nome: 'Erro',
      peso: 70,
      altura: 0,
    );

    expect(() => pessoa.calcularImc(), throwsArgumentError);
  });

  test('Peso zero deve lançar erro', () {
    final pessoa = Pessoa(
      nome: 'Erro Peso',
      peso: 0,
      altura: 1.65,
    );

    expect(() => pessoa.calcularImc(), throwsArgumentError);
  });

  test('Nome vazio deve lançar erro', () {
    final pessoa = Pessoa(
      nome: '',
      peso: 70,
      altura: 1.65,
    );

    expect(() => pessoa.calcularImc(), throwsArgumentError);
  });
}
