import 'package:flutter/material.dart';
import 'package:invoiceapp/utils/colors.dart';
import 'package:searchable_listview/searchable_listview.dart';

import '../utils/global.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/home');
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        backgroundColor: primatyColor,
        centerTitle: true,
        shadowColor: Colors.blueGrey,
        elevation: 5,
        title: const Text(
          "Search Your Product",
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: SearchableList(
                inputDecoration: InputDecoration(
                    fillColor: Colors.red,
                    focusColor: Colors.red,
                    hintText: 'Search....',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                initialList: productList,
                filter: (query) => productList
                    .where(
                      (e) => e.name!.toLowerCase().contains(query),
                    )
                    .toList(),
                itemBuilder: (item) {
                  return Column(
                    children: [
                      ...List.generate(
                        productList.length,
                        (index) => ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          leading: Image(
                            image:
                                AssetImage(productList[index].img.toString()),
                          ),
                          title: Text(
                            productList[index].name.toString(),
                            style: TextStyle(color: secColor),
                          ),
                          subtitle: Text(
                            productList[index].price.toString(),
                            style: TextStyle(color: Colors.grey),
                          ),
                          trailing: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/edit');
                            },
                            child: Icon(
                              Icons.shopping_cart,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
