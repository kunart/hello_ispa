import 'package:flutter/material.dart';
 
void main() {
  runApp(const HelloIspaApp());
}
 
class HelloIspaApp extends StatelessWidget {
  const HelloIspaApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello ISPA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1F3A93)),
        useMaterial3: true,
      ),
      home: const AccueilPage(),
    );
  }
}
class AccueilPage extends StatefulWidget {
  const AccueilPage({super.key});
 
  @override
  State<AccueilPage> createState() => _AccueilPageState();
}
class _AccueilPageState extends State<AccueilPage> {
  int _presents = 0;
 
  void _ajouterPresent() {
    setState(() => _presents++);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello ISPA')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.school, size: 80),
              const SizedBox(height: 16),
              Text(
                'Bienvenue au cours de développement mobile',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 24),
              Text(
                'Étudiants présents : $_presents',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _ajouterPresent,
        icon: const Icon(Icons.person_add),
        label: const Text('Je suis là'),
      ),
    );
  }
}

