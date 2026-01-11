# Calculadora IMC

Aplicativo Flutter simples para calcular o IMC (Índice de Massa Corporal) a partir de peso e altura informados pelo usuário.

## Funcionalidades
- Entrada de peso (kg) e altura (m) via campos de texto.
- Validação básica de valores maiores que zero.
- Cálculo do IMC em tempo de execução e exibição do resultado com duas casas decimais.
- Testes unitários para a lógica de cálculo e validações da entidade `Pessoa`.

## Requisitos
- Flutter (versão compatível com o SDK configurado no projeto).
- Dart (instalado junto com o Flutter SDK).

## Executando o app
```bash
flutter pub get
flutter run
```

## Executando os testes
```bash
flutter test
```

## Estrutura principal
- `lib/main.dart`: interface simples com campos de entrada e botão para calcular.
- `lib/models/pessoa.dart`: modelo que valida dados e calcula o IMC.
- `test/pessoa_test.dart`: testes unitários cobrindo validações e cálculo do IMC.
