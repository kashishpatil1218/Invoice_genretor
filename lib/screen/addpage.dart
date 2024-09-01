import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addpage extends StatefulWidget {
  const Addpage({super.key});

  @override
  State<Addpage> createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtAmount = TextEditingController();
  TextEditingController txtPrice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add page'),
      ),
      body: Container(
        height: 300,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            TextField(
              controller: txtName,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                label: Text('name'),
              ),
            ),
            TextField(
              controller: txtAmount,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(label: Text('amount')),
            ),
            TextField(
              controller: txtPrice,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(label: Text('Quantity')),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

             Map map
        },


    child: const Icon(CupertinoIcons.add),
      ),
    );
  }
}

List data=[];
