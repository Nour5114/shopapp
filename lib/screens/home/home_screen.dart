import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/shop_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> body = [
      const ShopTab(),
      const Text(''),
      const Text(''),
      const Text(''),
      const Text(''),
    ];
    return Scaffold(
      body: Center(
        child: body[selectedCurrentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: selectedCurrentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              label: 'Shop',
              icon: Icon(
                Icons.storefront_sharp,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              label: 'Explore',
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              label: 'Favourite',
              icon: Icon(
                Icons.favorite_outline,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              label: 'Account',
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
              )),
        ],
        onTap: (int newIndex) {
          setState(() {
            selectedCurrentIndex = newIndex;
          });
        },
      ),
    );
  }
}
