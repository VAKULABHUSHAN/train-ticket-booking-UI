import 'package:carousel_slider/carousel_slider.dart';
import 'package:easybook/ticketbooking.dart';
import 'package:easybook/touristplace.dart';
import 'package:flutter/material.dart';

class pg1 extends StatefulWidget {
  const pg1({super.key});

  @override
  State<pg1> createState() => _pg1State();
}

class _pg1State extends State<pg1> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title: const Center(
          child: Text(
            "EASY BOOK",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.orange], // Gradient colors
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.1,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[200],
              child: Column(
                children: [
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blueAccent, Colors.lightBlueAccent],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 10,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 220.0,top: 10),
                                child: Container(
                                  height: MediaQuery.of(context).size.height/9,
                                  width: MediaQuery.of(context).size.width/3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                      image: NetworkImage("https://thumbs.dreamstime.com/b/train-doodle-sketch-style-icon-isolated-white-background-simple-ink-hand-drawn-vector-illustration-208095744.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                "Book your train tickets now ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),)
                            ],
                          ),
                      ),
                    ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const tb(),
                          ),
                        );
                      }
                  ),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.orange, Colors.deepOrangeAccent],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 10,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 220.0,top: 10),
                              child: Container(
                                height: MediaQuery.of(context).size.height/9,
                                width: MediaQuery.of(context).size.width/3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    image: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/2848/2848691.png"
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "See your booked train ticket ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ticket(),
                          ),
                        );
                      }
                  ),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.green, Colors.greenAccent],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 10,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 220.0,top: 10),
                              child: Container(
                                height: MediaQuery.of(context).size.height/9,
                                width: MediaQuery.of(context).size.width/3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    image: NetworkImage("https://cdn-icons-png.flaticon.com/512/5261/5261261.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "tourist places to visit ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ccs(),
                          ),
                        );
                      }
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
class ticket extends StatelessWidget {
  const ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height/1,
        width: MediaQuery.of(context).size.width/1.1,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://www.delcampe.net/static/img_large/auction/001/841/260/392_001.jpg"))
        ),
      ),
    );
  }
}
