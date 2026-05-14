import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

// Root app
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AppHome());
  }
}

// App Home
class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App home'), leading: Icon(Icons.ondemand_video), backgroundColor: Colors.redAccent, foregroundColor: Colors.white),
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.shopping_cart)),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text('Heading'),
            Text('sub-heading'),
            Text('paragraph'),
            ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
            OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
            Container(padding: EdgeInsets.all(20), child: Image.asset('assets/img/minion.png')),
          ],
        ),
      ),
    );
  }
}
