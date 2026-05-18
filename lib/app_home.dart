// App Home
import 'package:flutter/material.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(title: Text('App home'), leading: Icon(Icons.ondemand_video)),
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.shopping_cart)),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text('Heading', style: Theme.of(context).textTheme.headlineLarge),
            Text('Sub-heading', style: Theme.of(context).textTheme.titleLarge),
            Text('Paragraph', style: Theme.of(context).textTheme.bodyLarge),
            ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
            OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
            Container(padding: EdgeInsets.all(20), child: Image.asset('assets/img/minion.png')),
          ],
        ),
      ),
    );
  }
}
