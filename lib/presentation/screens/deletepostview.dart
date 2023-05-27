import 'package:flutter/material.dart';

class DeleteView extends StatefulWidget {
  const DeleteView({Key? key}) : super(key: key);

  @override
  State<DeleteView> createState() => _DeleteViewState();
}

class _DeleteViewState extends State<DeleteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("delete view"),
      ),
      body: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
