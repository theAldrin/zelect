import 'package:flutter/material.dart';

class TopPhones extends StatelessWidget {
  const TopPhones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(
                'Top Smartphones',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 40,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Wrap PhoneList with a SizedBox to provide a height
            Expanded(child: PhoneList())
          ],
        ),
      ),
    );
  }
}

class PhoneList extends StatelessWidget {
  const PhoneList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [Colors.red, Colors.green, Colors.blue, Colors.pink];

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return Container(
          height: 300,
          color: colors[index],
        );
      },
    );
  }
}

class productDetailClass {
  productDetailClass(
      {required this.price,
      required this.rank,
      required this.name,
      required this.image,
      required this.remarks});

  int price, rank;
  String name, image;
  List<String> remarks;
}

class ProductDetails extends StatelessWidget {
  ProductDetails(
      {required this.minprice,
      required this.maxprice,
      required this.firstphone,
      required this.secondphone,
      required this.thirdphone});

  int minprice, maxprice;
  productDetailClass firstphone, secondphone, thirdphone;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );
  }
}
