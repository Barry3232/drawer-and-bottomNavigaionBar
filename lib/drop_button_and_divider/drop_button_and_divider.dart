import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final _productSizeList = ["small", "Medium", "Large", "XLarge"];
  String _selectedVal = "";

  _MyPageState() {
    _selectedVal = _productSizeList[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0,10.0,10.0,0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.add_shopping_cart_outlined),
                label: const Text('Click Here'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 20),
                  textStyle: const TextStyle(fontSize: 20),
                  side: const BorderSide(color: Colors.black, width: 3),
                  shape: const RoundedRectangleBorder(),
                ),
              ),
              DropdownButton(
                  value: _selectedVal,
                  items: _productSizeList
                      .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      _selectedVal = val!;
                    });
                  }),
              DropdownButtonFormField(
                  value: _selectedVal,
                  items: _productSizeList
                      .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      _selectedVal = val!;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.blueAccent,
                  ),
                  dropdownColor: Colors.blueGrey,
                  decoration: const InputDecoration(
                      labelText: 'Product Sizes',
                      prefixIcon: Icon(
                        Icons.accessibility,
                        color: Colors.blueAccent,
                      ),
                      border: OutlineInputBorder())),
              const Divider(
                endIndent: 50,
                indent: 50,
                height: 50,
                color: Colors.black,
              ),
              const Text(
                'Book',
                style: TextStyle(letterSpacing: 3,
                    color: Colors.grey
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
