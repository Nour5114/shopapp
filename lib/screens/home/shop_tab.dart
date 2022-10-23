import 'package:flutter/material.dart';

class ShopTab extends StatefulWidget {
  const ShopTab({Key? key}) : super(key: key);

  @override
  State<ShopTab> createState() => _ShopTabState();
}

class _ShopTabState extends State<ShopTab> {
  List<Map> exclusiveOffer = [
    {
      'name': 'Bananas',
      'image': 'assets/images/exclusiveimage.png',
      'gty': '1kg',
      'price': '\$4.99'
    },
    {
      'name': 'Apples',
      'image': 'assets/images/exclusiveimage.png',
      'gty': '2kg',
      'price': '\$5.99'
    },
    {
      'name': 'Bananas',
      'image': 'assets/images/exclusiveimage.png',
      'gty': '1kg',
      'price': '\$4.99'
    },
    {
      'name': 'Bananas',
      'image': 'assets/images/exclusiveimage.png',
      'gty': '1kg',
      'price': '\$4.99'
    },
    {
      'name': 'Apples',
      'image': 'assets/images/exclusiveimage.png',
      'gty': '2kg',
      'price': '\$5.99'
    },
    {
      'name': 'Bananas',
      'image': 'assets/images/exclusiveimage.png',
      'gty': '1kg',
      'price': '\$4.99'
    },
    {
      'name': 'Bananas',
      'image': 'assets/images/exclusiveimage.png',
      'gty': '1kg',
      'price': '\$4.99'
    },
    {
      'name': 'Apples',
      'image': 'assets/images/exclusiveimage.png',
      'gty': '2kg',
      'price': '\$5.99'
    },
  ];
  List<Map> bestSelling = [
    {
      'name': 'Bell Pepper Red',
      'image': 'assets/images/bestSelling1.png',
      'gty': '1kg',
      'price': '\$4.99'
    },
    {
      'name': 'Ginger',
      'image': 'assets/images/bestSelling2.png',
      'gty': '2kg',
      'price': '\$5.99'
    },
    {
      'name': 'Bell Pepper Red',
      'image': 'assets/images/bestSelling1.png',
      'gty': '1kg',
      'price': '\$4.99'
    },
    {
      'name': 'Ginger',
      'image': 'assets/images/bestSelling2.png',
      'gty': '2kg',
      'price': '\$5.99'
    },
    {
      'name': 'Bell Pepper Red',
      'image': 'assets/images/bestSelling1.png',
      'gty': '1kg',
      'price': '\$4.99'
    },
    {
      'name': 'Ginger',
      'image': 'assets/images/bestSelling2.png',
      'gty': '2kg',
      'price': '\$5.99'
    },
  ];
  List<Map> subGroceries = [
    {
      'name': 'Pulses',
      'image': 'assets/images/groceries1.png',
    },
    {
      'name': 'Rice',
      'image': 'assets/images/groceries2.png',
    },
    {
      'name': 'Pulses',
      'image': 'assets/images/groceries1.png',
    },
    {
      'name': 'Rice',
      'image': 'assets/images/groceries2.png',
    },
  ];
  List<Map> groceries = [
    {
      'name': 'Beef Bone',
      'image': 'assets/images/groceries3.png',
      'gty': '1kg',
      'price': '\$4.99'
    },
    {
      'name': 'Broiler Chicken',
      'image': 'assets/images/groceries4.png',
      'gty': '2kg',
      'price': '\$5.99'
    },
    {
      'name': 'Beef Bone',
      'image': 'assets/images/groceries3.png',
      'gty': '1kg',
      'price': '\$4.99'
    },
    {
      'name': 'Broiler Chicken',
      'image': 'assets/images/groceries4.png',
      'gty': '2kg',
      'price': '\$5.99'
    },
  ];



  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color primaryColor = const Color(0xFF53B175);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/loginlogo.png',
                      width: 30,
                      height: 35,
                    )),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 60,
                  child: TextField(
                    maxLines: 1,
                    style: const TextStyle(fontSize: 17),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.search,
                          color: Theme.of(context).iconTheme.color,size: 25,),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      fillColor:
                          Theme.of(context).inputDecorationTheme.fillColor,
                      contentPadding: EdgeInsets.zero,
                      hintText: 'Search Store',
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/banner.png',
                    )),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Exclusive Offer',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'See all',
                        style:
                            TextStyle(color: Color(0xFF53B175), fontSize: 18),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: exclusiveOffer.length,
                    itemBuilder: (_, index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade50,
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 150,
                              child:
                                  Image.asset(exclusiveOffer[index]['image'])),
                          Text(exclusiveOffer[index]['name'],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                          Row(
                            children: [
                              Text(exclusiveOffer[index]['price'],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              const SizedBox(width: 50,),
                              SizedBox(
                                width: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(primaryColor),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                  child: const Icon(Icons.add),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Best Selling',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'See all',
                        style:
                            TextStyle(color: Color(0xFF53B175), fontSize: 18),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: bestSelling.length,
                    itemBuilder: (_, index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade50,
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 150,
                              child: Image.asset(bestSelling[index]['image'])),
                          Text(bestSelling[index]['name'],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                          Row(
                            children: [
                              Text(bestSelling[index]['price'],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              const SizedBox(width: 50,),
                              SizedBox(
                                width: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(primaryColor),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                  child: const Icon(Icons.add),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Groceries',
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'See all',
                        style:
                        TextStyle(color: Color(0xFF53B175), fontSize: 18),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: subGroceries.length,
                    itemBuilder: (_, index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.only(right: 50,left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink.shade50,
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(subGroceries[index]['image']),
                          const SizedBox(width: 20,),
                          Text(subGroceries[index]['name'],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: groceries.length,
                    itemBuilder: (_, index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding:  const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade50,
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 150,
                              child: Image.asset(groceries[index]['image'])),
                          Text(groceries[index]['name'],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                          Row(
                            children: [
                              Text(groceries[index]['price'],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              const SizedBox(width: 50,),
                              SizedBox(
                                width: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(primaryColor),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                  child: const Icon(Icons.add),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
