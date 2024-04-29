import 'package:flutter/material.dart';
import 'package:tubes_anum/kalkulator/data.dart';

class TextKalku extends StatefulWidget {
  const TextKalku({super.key});

  @override
  State<TextKalku> createState() => _TextKalkuState();
}

class _TextKalkuState extends State<TextKalku> {
  @override
  Widget build(BuildContext context) {
    Scaffold(
      // appBar: AppBar(
      //   title: const Text('Title'),
      // ),
      body: Container(
        child: const Column(
          children: [
            TextField(),
          ],
        ),
      ),
    );
    return const Column(
      children: [
        // TextField(),
      ],
    );
  }
}
