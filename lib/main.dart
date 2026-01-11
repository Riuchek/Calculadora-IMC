import 'package:flutter/material.dart';

void main() {
  runApp(const ImcCalculator());
}

class ImcCalculator extends StatelessWidget {
  const ImcCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
      ),
      home: const ImcCalculatorPage(title: 'Calculadora IMC'),
    );
  }
}

class ImcCalculatorPage extends StatefulWidget {
  const ImcCalculatorPage({super.key, required this.title});

  final String title;

  @override
  State<ImcCalculatorPage> createState() => _ImcCalculatorPageState();
}

class _ImcCalculatorPageState extends State<ImcCalculatorPage> {
  double imc = 0.0;
  double peso = 0.0;
  double altura = 0;

  void calculadoraIMC() {
    setState(() {
      imc = peso / (altura * altura);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Calculadora IMC', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            Text(
              'O IMC é ${imc.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 24),
            TextField(
              onChanged: (value) => setState(() => peso = double.parse(value)),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Peso',
                hintText: 'Digite seu peso em kg (ex: 70.5)',
              ),
            ),
            TextField(
               onChanged: (value) => setState(() => altura = double.parse(value)),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Altura',
                hintText: 'Digite sua altura em cm (ex: 1.70)',
              ),
            ),
            ElevatedButton(
              onPressed: peso > 0 && altura > 0 ? calculadoraIMC : null,
              child: const Text('Calcular IMC'),
            ),
          ],
        ),
      ),
    );
  }
}
