import 'package:flutter/material.dart';
import '../pag1/main.dart'; // Asegúrate de que este archivo y clase existan
import '../pag2/main.dart'; // Completa este archivo y define PlatformAdaptingHomePage
import '../pag3/main.dart'; // Asegúrate de que este archivo y clase existan

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
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
          children: <Widget>[
            const SizedBox(height: 20),
            ////////////////////////////////////////
            // Página 1: Simplistic Editor
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyAppPag1()),
                );
              },
              child: const Text('Ir a Simplistic Editor'),
            ),
            ////////////////////////////////////////
            // Página 2: Tabs (Recuerda llenar el archivo main.dart en pag2)
            ElevatedButton(
              onPressed: () =>
                  _navigateToPage(context, PlatformAdaptingHomePage()),
              child: const Text('Ir a Tabs'),
            ),
            ////////////////////////////////////////
            // Página 3: Material 3
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const App()),
                );
              },
              child: const Text('Ir a Material 3'),
            ),
          ],
        ),
      ),
    );
  }
}
