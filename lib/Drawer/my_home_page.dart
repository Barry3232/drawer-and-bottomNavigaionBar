import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Flutter App',
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
            ),
          ),
        ),
        drawer: Drawer(
          elevation: 10,
          shadowColor: Colors.black87,
          // width: 50,
          child: ListView(
            children: [
              DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: Container(
                  color: Colors.black54,
                  child: const Column(
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.shopping_cart_rounded),
                title: const Text('Shop'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Favorite'),
                onTap: () {},
              ),

              // const SizedBox(
              //  height: 10,
              // ),
              const Padding(padding: EdgeInsets.all(15), child: Text('Labels')),
              // const SizedBox(
              //    height: 10,
              // ),

              ListTile(
                leading: const Icon(
                  Icons.label,
                  color: Colors.red,
                ),
                title: const Text('Red'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.label,
                  color: Colors.green,
                ),
                title: const Text('Green'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.label,
                  color: Colors.blue,
                ),
                title: const Text('Blue'),
                onTap: () {},
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black45,
          foregroundColor: Colors.black87,
          shape: const CircleBorder(),
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: const BottomAppBar(
            notchMargin: 5.0,
            shape: CircularNotchedRectangle(),
            color: Colors.black87,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Icon(
                          Icons.shopping_cart_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          'Shop',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ])),
                  Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        Text(
                          'Fav',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ])),
                  Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ]))
                ])));
  }
}
