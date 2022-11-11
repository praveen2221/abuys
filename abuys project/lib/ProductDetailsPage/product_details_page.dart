import 'package:abuys/Widgets/RoundedButton.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BuyerProductDetails extends StatefulWidget {
  const BuyerProductDetails({Key? key}) : super(key: key);

  @override
  State<BuyerProductDetails> createState() => _BuyerProductDetailsState();
}

class _BuyerProductDetailsState extends State<BuyerProductDetails> {
  int activeIndex = 0;
  final urlImages = [
    'https://noticiassalamanca.com/wp-content/uploads/2022/07/vida-eusebio.jpg',
    'https://www.kibrispdr.org/data/798/pixabay-gambar-gratis-27.jpg',
    'https://cdn.pixabay.com/photo/2019/06/29/17/35/tree-4306636__340.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAoW-3htnWRVpWMpV9k0Xa8OHrP6yox31TMJyURBPPf8PiRMdPWpuBSCLgKF_qfr61ZbM&usqp=CAU',
    'https://www.maketecheasier.com/assets/uploads/2020/06/Featured-Image-Live-Weather-Wallpapers-Android.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    Widget buildImage(String urlImage, index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 3),
          color: Colors.grey,
          width: double.infinity,
          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
          ),
        );

    Widget buildIdicator() => AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: urlImages.length,
        );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.indigo,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/bottomNavigation');
          },
        ),
        title: const Text(
          'abuys',
          style: TextStyle(
              color: Colors.indigo, fontSize: 20, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          CircleAvatar(
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/buyerLogin');
                },
                icon: const Icon(
                  Icons.logout_rounded,
                  color: Colors.white,
                )),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Name of the Buyer/Phone Number',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.indigo[900],
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo[900],
                  ),
                  label: Text('Cart'),
                  icon: Icon(Icons.shopping_cart),
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 200,
                        // viewportFraction: 1,
                        autoPlay: true,
                        enableInfiniteScroll: false,
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.height,
                        autoPlayInterval: Duration(seconds: 2),
                        onPageChanged: (index, reason) =>
                            setState(() => activeIndex = index)),
                    itemCount: urlImages.length,
                    itemBuilder: (context, index, realIndex) {
                      final urlImage = urlImages[index];
                      return buildImage(urlImage, index);
                    },
                  ),
                  SizedBox(height: 32),
                  buildIdicator(),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Ponni Raw Rice',
                style: TextStyle(color: Colors.indigo, fontSize: 17),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                children: [
                  const Text('Market Price'),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 25.0),
                    child: Text('Rs'),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                      width: 100,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: '00.0',
                          contentPadding: EdgeInsets.all(5),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                children: [
                  const Text('Seller Price'),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 25.0),
                    child: Text('Rs'),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                      width: 100,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: '00.0',
                          contentPadding: EdgeInsets.all(5),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                children: [
                  const Text('Selling Quantity'),
                  const Spacer(),
                  const Text('Kg/litre'),
                  const SizedBox(width: 10),
                  SizedBox(
                      width: 100,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: '00.0',
                          contentPadding: EdgeInsets.all(5),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                children: [
                  const Text('Total Price'),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 25.0),
                    child: Text('Rs'),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                      width: 100,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: '00.0',
                          contentPadding: EdgeInsets.all(5),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Column(
                children: [
                  RoundedButton(
                      onClick: () {
                        Navigator.pushNamed(context, '/sellectTransportType');
                      },
                      icon: Icon(Icons.shopping_cart_rounded),
                      nameText: Text('Buy'),
                      color: Colors.white),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
