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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const DemoFormWidget());
  }
}

class DemoFormWidget extends StatefulWidget {
  const DemoFormWidget({super.key});

  @override
  State<DemoFormWidget> createState() => _DemoFormWidgetState();
}

class _DemoFormWidgetState extends State<DemoFormWidget> {
  final textControllerEmail = TextEditingController();
  bool remeberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            TextFormField(
              controller: textControllerEmail,
              decoration: const InputDecoration(
                labelText: "E-mail",
                hintText: "E-mail"
              ),
            ),
            Switch(value: remeberMe, onChanged: (isEnabled){
              setState(() {
                remeberMe= !remeberMe;
              });
            },),
            ElevatedButton(onPressed: (){}, child: const Text("Valider"))
          ],
        ),
      ),
    );
  }
}