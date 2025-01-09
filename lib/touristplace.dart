import 'package:carousel_slider/carousel_slider.dart';
import 'package:easybook/tpnavi.dart';
import 'package:flutter/material.dart';

class ccs extends StatefulWidget {
  const ccs({super.key});

  @override
  State<ccs> createState() => _ccsState();
}

class _ccsState extends State<ccs> {
  @override
  List  image33 =[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE6tmXIrT885EzE098C75LpRsNUCkMDIyeQg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6ZMDme7_HVZ2cpY5SYhu2iHGAzo9ta0LrEw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh93HY4BUXZbdk5ncynNUMLYsDOWeoyAve4w&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdircQqNO66nDHm07SLhjspPQOAHSzy-dtBBf85wCT4H7pnQbD8TsMNTr7koELuKD5ZyU&usqp=CAU",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/35/ae/69/the-adiyogi-statue-is.jpg?w=500&h=500&s=1",
    "https://pujacraft.com/cdn/shop/articles/Brihadeeswarar-Temple-Thanjavur-Tamil-Nadu-1.jpg?v=1684509985",

  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: const Text("Cultural Compass"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              itemCount: image33.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                  child: Container(

                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:NetworkImage(image33[index]),
                        fit: BoxFit.fill,),
                      borderRadius: BorderRadius.circular(20),

                    ),

                    // child: Image.asset(image33[index], fit: BoxFit.fill,),
                  ),
                );
              },
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Trending 📈",style: TextStyle(fontSize: 25),),
                ),
              ],
            ),
            GestureDetector(
                child: Container(
                  height: 100,
                  width: 375,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                        child: Container(
                          height:85,width:85,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: const DecorationImage(
                              image: NetworkImage("https://pujacraft.com/cdn/shop/articles/Brihadeeswarar-Temple-Thanjavur-Tamil-Nadu-1.jpg?v=1684509985"),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const Expanded(
                          child:
                          Text("Brihadishvara Temple, is a Shaivite Hindu temple built in a Chola architectural style located on the south bank of the Cauvery river in Thanjavur, Tamil Nadu, India."))
                    ],
                  ),

                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const samp2(),
                    ),
                  );
                }
            ),
            const SizedBox(height: 20,),
            Container(
              height: 100,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    child: Container(
                      height:85,width:85,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://t3.gstatic.com/licensed-image?q=tbn:ANd9GcSHd9BWp09s7QiLpVRsxQpTMnIeAOHrDAEC3SlY6c6vaHAfgxJxrZ4-RFuFlOmweC4O",
                          ),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const Expanded(
                    child:
                    Text("The Khajuraho Group of Monuments are a group of Hindu and Jain temples in Chhatarpur district, Madhya Pradesh, India."),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 100,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    child: Container(
                      height:85,width:85,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/35/ae/69/the-adiyogi-statue-is.jpg?w=500&h=500&s=1"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const Expanded(
                    child:
                    Text("Isha yoga center in India is a sacred space for self transformation where spiritual seekers from all over the globe gather to pursue the spiritual path. "),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 100,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    child: Container(
                      height:85,width:85,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: const DecorationImage(
                          image: NetworkImage("https://t2.gstatic.com/licensed-image?q=tbn:ANd9GcRjOodQi1X9KjU4A_pSN7rzjntEyhn38JWUbkwF2jAhaatZ5QQnDZNC1BU11ux8WFrW"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const Expanded(
                    child:
                    Text("Hampi is an ancient village in the south Indian state of Karnataka. It’s dotted with numerous ruined temple complexes from the Vijayanagara Empire."),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 100,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    child: Container(
                      height:85,width:85,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: const DecorationImage(
                          image: NetworkImage("https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcRIF2M3_bGEyml8uAWT6qHrOoGIbV5zoN9LJ2dYxY6G24y3BxnkkwczI5jW7YoqA3em"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const Expanded(
                    child:
                    Text("The Ellora Caves are a UNESCO World Heritage Site in Aurangabad district, Maharashtra, India. It is one of the largest rock-cut Hindu temple cave complexes in the world,"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blue.shade100 ,
    );
  }
}
