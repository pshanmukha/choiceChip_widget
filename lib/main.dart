import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChoiceChip Widget exp',
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: const ChoiceChipScreen(),
    );
  }
}

class ChoiceChipScreen extends StatefulWidget {
  const ChoiceChipScreen({Key? key}) : super(key: key);

  @override
  _ChoiceChipScreenState createState() => _ChoiceChipScreenState();
}

class _ChoiceChipScreenState extends State<ChoiceChipScreen> {
  bool isSelected = false;
  bool isSelected1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ChoiceChip Widget exp"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ChoiceChip(
                label: const Text("choice chip"),
                selected: isSelected,
              onSelected: (newBoolvalue) {
                  setState(() {
                    isSelected = newBoolvalue;
                  });
              },
            ),
            ChoiceChip(
              label: const Text("choice chip with avatar"),
              avatar: Icon(Icons.power_settings_new,color: isSelected1 ? Colors.red : Colors.black,),
              selected: isSelected1,
              onSelected: (newBoolvalue) {
                setState(() {
                  isSelected1 = newBoolvalue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

