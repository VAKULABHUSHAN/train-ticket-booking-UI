import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class samp2 extends StatefulWidget {
  const samp2({super.key});

  @override
  State<samp2> createState() => _samp2State();
}

class _samp2State extends State<samp2> {
  @override
  List  image33 =[
    "https://lh3.googleusercontent.com/proxy/ERe7hD5GFQ92Qikf5kYdMNOiGGeYcN1fv-xolNRxxD9SzAAy96tU7k2N86EU_kSaceGEsSpDTPkAxdR7HKi-AFBe8CPe5dsf5SWzwjvOulTj",
    "https://i.pinimg.com/originals/d5/3e/e6/d53ee61bc4230971a0f20660ec9a7f90.jpg",
    "https://qph.cf2.quoracdn.net/main-qimg-8c9659c89e509b734a1be8773d9106d6-lq",
    "https://images.picxy.com/cache/2021/1/26/850a5fcfdfa1e0e58affa9277a37165d.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Tanjore_Big_Temple_-_Brihadeeswarar_Temple.jpg/640px-Tanjore_Big_Temple_-_Brihadeeswarar_Temple.jpg",
    "https://www.mediastorehouse.com/t/311/eyeubiquitous-20116233-20090960.jpg.webp",
    "https://lh3.googleusercontent.com/proxy/K1ooFazyRDFr-dNEwvuP9qS1ToJVi39lgng5X9LO0lQNPu_KA0rtAE9CnP64OLEW7hBf8aM75Vub4_YpTLvls4YfGXMT4hTRmSLqx11ZpZo",

  ];
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(backgroundColor: Colors.grey,),
      body: SingleChildScrollView(
        child: Column(
          children: [

            const Text(
              "   Brihadishvara Temple",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            Container(
              height: 250,
              width: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://lh3.googleusercontent.com/proxy/ERe7hD5GFQ92Qikf5kYdMNOiGGeYcN1fv-xolNRxxD9SzAAy96tU7k2N86EU_kSaceGEsSpDTPkAxdR7HKi-AFBe8CPe5dsf5SWzwjvOulTj")
                    ,fit: BoxFit.fill,
                  )
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/1,
              width: MediaQuery.of(context).size.width/1,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 300.0),
                    child: Text("About",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "One of the largest temples in India, the Brihadeeswara Temple also known as Peruvudaiyar Kovil is located in Thanjavur. Dedicate to Lord Shiva represented as a huge ‘Lingam’, the temple was built around 1010 AD by the Chola king Rajaraja Chola I. Considered as one of the three ‘Great Living Chola Temples’ along with the Gangaikondacholeeswaram Temple and Airavastesvara Temple, the complex is also listed as a part of the UNESCO World Heritage Sites."
                        ,style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 300.0),
                    child: Text("History",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "A spectrum of dravidian temple styles continued to develop from the fifth to the ninth century over the Chalukya era rule as evidenced in Aihole, Badami and Pattadakal, and then with the Pallava era as witnessed at Mamallapuram and other monuments. Thereafter, between 850 and 1280, Cholas emerged as the dominant dynasty The early Chola period saw a greater emphasis on securing their geopolitical boundaries and less emphasis on architecture.",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 200.0,bottom: 20),
                    child: Text("Maps and weather :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0,left: 15),
                        child: Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI_4d7MwiVdcXtsbjXag8B8WE0YI369Bt9NQ&s"))
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Container(
                          height: 75,
                          width: 75,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage("https://i.pinimg.com/originals/77/0b/80/770b805d5c99c7931366c2e84e88f251.png"))
                          ),
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
            Text(
                "Gallery",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
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
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
