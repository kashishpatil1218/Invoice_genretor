import 'package:flutter/material.dart';
import 'package:invoiceapp/utils/colors.dart';
import 'package:invoiceapp/utils/global.dart';
import 'package:searchable_listview/widgets/search_text_field.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> categories = [
    'Food',
    'Fruits',
    'Electronics',
    'Sports',
  ];
  final List<String> selectedCategories = [];

  @override
  Widget build(BuildContext context) {
    final filterProducts = productList.where((product) {
      return selectedCategories.isEmpty ||
          selectedCategories.contains(product.category);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primatyColor,
        centerTitle: true,
        title: const Text(
          'Citadel',
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10),
            margin: EdgeInsets.only(top: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: categories
                    .map((category) => FilterChip(
                        selected: selectedCategories.contains(category),
                        label: Text(category),
                        onSelected: (selected) {
                          setState(() {
                            if (selected) {
                              selectedCategories.add(category);
                            } else {
                              selectedCategories.remove(category);
                            }
                          });
                        }))
                    .toList(),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: filterProducts.length,
                  itemBuilder: (context, index) {
                    final product = filterProducts[index];
                    return Card(
                      elevation: 8.0,
                      margin: EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            leading: Image(
                              image: AssetImage(product.img.toString()),
                            ),
                            title: Text(
                              product.name.toString(),
                              style: TextStyle(color: secColor),
                            ),
                            subtitle: Text(
                              product.price.toString(),
                              style: TextStyle(color: Colors.grey),
                            ),
                            trailing: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/edit');
                                },
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.grey.shade500,
                                ))),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
