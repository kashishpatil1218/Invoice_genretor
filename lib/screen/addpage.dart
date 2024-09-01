import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoiceapp/utils/colors.dart';

import 'Components/text_field.dart';

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
        shadowColor: Colors.black,
        elevation: 8,
        title: Text(
          'Add page',
          style: TextStyle(
              color: secColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      // body: Container(
      //   height: 300,
      //   width: double.infinity,
      //   padding: const EdgeInsets.all(16),
      //   margin: const EdgeInsets.all(16),
      //   decoration: BoxDecoration(
      //     color: Colors.black12,
      //     borderRadius: BorderRadius.circular(20),
      //   ),
      //   child: Column(
      //     children: [
      //       TextField(
      //         controller: txtName,
      //         keyboardType: TextInputType.text,
      //         decoration: const InputDecoration(
      //           label: Text('name'),
      //         ),
      //       ),
      //       TextField(
      //         controller: txtAmount,
      //         keyboardType: TextInputType.number,
      //         decoration: const InputDecoration(label: Text('amount')),
      //       ),
      //       TextField(
      //         controller: txtPrice,
      //         keyboardType: TextInputType.number,
      //         decoration: const InputDecoration(label: Text('Quantity')),
      //       ),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Text(
                'Client 1',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 450,
                    width: 495,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              blurRadius: 5,
                              spreadRadius: 5)
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Column(
                    children: [
                      TextForCilent(
                          hint: 'Adam Smith',
                          isPhone: false,
                          isAddress: false,
                          isNumber: false,
                          lable: 'Name'),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextForCilent(
                            hint: '1236547890',
                            isPhone: true,
                            isAddress: false,
                            isNumber: true,
                            lable: 'Mobile Number'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextForCilent(
                            hint: 'adm123@gmail.com',
                            isPhone: false,
                            isAddress: false,
                            isNumber: false,
                            lable: 'Email Address'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextForCilent(
                            hint:
                                '57 Johns Crescent,Shire of Yarra Ranges,Melbourne,Australia',
                            isPhone: true,
                            isAddress: true,
                            isNumber: false,
                            lable: 'Address'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: primatyColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  'Add Items+',
                  style: TextStyle(color: Colors.white,fontSize: 15)
                )),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(CupertinoIcons.add),
      ),
    );
  }
}

List data = [];
