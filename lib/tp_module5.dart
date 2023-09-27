import 'package:flutter/material.dart';

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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
          useMaterial3: true,
        ),
        home: const TwitterPage());
  }
}
class TwitterPage extends StatelessWidget {
  const TwitterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2196F5),
        title: const Text("Twitter", style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: const Color(0xFF58B0F0),
            padding: const EdgeInsets.all(16),
            child: OverflowBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton( child: const Text('Nouveau', style: TextStyle(color: Colors.white)), onPressed: () {},),
                TextButton( child: const Text('Accueil', style: TextStyle(color: Colors.white)), onPressed: () {}),
                TextButton( child: const Text('Recherche', style: TextStyle(color: Colors.white)), onPressed: () {}),
              ],
            ),
          ),
           Expanded(child: ListView.builder(
             itemCount: 10,
               itemBuilder: (context,index)=>const TwitterCart())
           )

        ],
      ) ,
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [
        TextButton( child: const Text('Fil', style: TextStyle(color: Colors.blue)), onPressed: () {},),
        TextButton( child: const Text('Notification', style: TextStyle(color: Colors.grey)), onPressed: () {}),
        TextButton( child: const Text('Message', style: TextStyle(color: Colors.grey)), onPressed: () {}),
        TextButton( child: const Text('Moi', style: TextStyle(color: Colors.grey)), onPressed: () {}),
      ],
    );
  }
}

class TwitterCart extends StatelessWidget {
  const TwitterCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
     child: Column(
       mainAxisSize: MainAxisSize.min,
       children: <Widget>[
         ListTile(
           leading: Image.asset('assets/shelby.png'),
           title: const Text("LaCrevette@Chocolate"),
           subtitle: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: <Widget>[
             TextButton( child: const Text('Répondre', style: TextStyle(color: Colors.black)), onPressed: () {},),
             TextButton( child: const Text('Retweet', style: TextStyle(color: Colors.black)), onPressed: () {}),
             TextButton( child: const Text('Favoris', style: TextStyle(color: Colors.black)), onPressed: () {}),
           ],
         )
       ],
     ),
          );
  }
}