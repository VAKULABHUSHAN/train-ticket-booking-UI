import 'package:flutter/material.dart';

class vt extends StatefulWidget {
  const vt({super.key});

  @override
  State<vt> createState() => _vtState();
}

class _vtState extends State<vt> {
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
            "YOUR SEARCH RESULTS",
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3.4,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),  // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrange.withOpacity(0.2),
                      blurRadius: 12,
                      offset: Offset(0, 6), // Subtle shadow
                    ),
                  ],
                  border: Border.all(
                    color: Colors.deepOrange, // Border color
                    width: 2.0, // Border thickness
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),  // Match border radius
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange.withOpacity(0.1),  // Light warm gradient
                        Colors.transparent,               // Fade to transparent
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.train_rounded,
                              color: Colors.deepOrange,
                              size: 28,  // Larger icon
                            ),
                            SizedBox(width: 8),
                            Text(
                              "MS VANDE BHARAT",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                letterSpacing: 1.1,  // Spacing for modern feel
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.deepOrange,
                              size: 24,
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.deepOrange.withOpacity(0.4),
                          thickness: 1.2,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("09:55",style: TextStyle(fontSize: 25),),
                            Text("13:50",style: TextStyle(fontSize: 25),),
                          ],
                        ),
                        const Text("Duration: 03h:55m",style: TextStyle(fontSize: 20),),
                        Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/15,
                              width: MediaQuery.of(context).size.width/4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black,width: 2)
                              ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("EC",style: TextStyle(fontWeight: FontWeight.bold),),
                                Row(
                                  children: [
                                    Text("Refresh",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Icon(Icons.refresh),
                                  ],
                                ),                            ],
                            ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                height: MediaQuery.of(context).size.height/15,
                                width: MediaQuery.of(context).size.width/4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black,width: 2)
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("CE",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Row(
                                      children: [
                                        Text("Refresh",style: TextStyle(fontWeight: FontWeight.bold),),
                                        Icon(Icons.refresh),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3.4,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),  // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrange.withOpacity(0.2),
                      blurRadius: 12,
                      offset: Offset(0, 6), // Subtle shadow
                    ),
                  ],
                  border: Border.all(
                    color: Colors.deepOrange, // Border color
                    width: 2.0, // Border thickness
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),  // Match border radius
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange.withOpacity(0.1),  // Light warm gradient
                        Colors.transparent,               // Fade to transparent
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.train_rounded,
                              color: Colors.deepOrange,
                              size: 28,  // Larger icon
                            ),
                            SizedBox(width: 8),
                            Text(
                              "NCJ MS VB EXP(20628)",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                letterSpacing: 1.1,  // Spacing for modern feel
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.deepOrange,
                              size: 24,
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.deepOrange.withOpacity(0.4),
                          thickness: 1.2,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("18:50",style: TextStyle(fontSize: 25),),
                            Text("23:00",style: TextStyle(fontSize: 25),),
                          ],
                        ),
                        const Text("Duration: 04h:10m",style: TextStyle(fontSize: 20),),
                        Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/15,
                              width: MediaQuery.of(context).size.width/4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black,width: 2)
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("EC",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Row(
                                    children: [
                                      Text("Refresh",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Icon(Icons.refresh),
                                    ],
                                  ),                            ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                height: MediaQuery.of(context).size.height/15,
                                width: MediaQuery.of(context).size.width/4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black,width: 2)
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("CC",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Row(
                                      children: [
                                        Text("Refresh",style: TextStyle(fontWeight: FontWeight.bold),),
                                        Icon(Icons.refresh),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3.4,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),  // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrange.withOpacity(0.2),
                      blurRadius: 12,
                      offset: Offset(0, 6), // Subtle shadow
                    ),
                  ],
                  border: Border.all(
                    color: Colors.deepOrange, // Border color
                    width: 2.0, // Border thickness
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),  // Match border radius
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange.withOpacity(0.1),  // Light warm gradient
                        Colors.transparent,               // Fade to transparent
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.train_rounded,
                              color: Colors.deepOrange,
                              size: 28,  // Larger icon
                            ),
                            SizedBox(width: 8),
                            Text(
                              "NCJ TBM SF EXP(22658)",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                letterSpacing: 1.1,  // Spacing for modern feel
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.deepOrange,
                              size: 24,
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.deepOrange.withOpacity(0.4),
                          thickness: 1.2,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("22:20",style: TextStyle(fontSize: 25),),
                            Text("04:10",style: TextStyle(fontSize: 25),),
                          ],
                        ),
                        const Text("Duration: 04h:50m",style: TextStyle(fontSize: 20),),
                        Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/15,
                              width: MediaQuery.of(context).size.width/4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black,width: 2)
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("3A",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Row(
                                    children: [
                                      Text("Refresh",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Icon(Icons.refresh),
                                    ],
                                  ),                            ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                height: MediaQuery.of(context).size.height/15,
                                width: MediaQuery.of(context).size.width/4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black,width: 2)
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("2A",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Row(
                                      children: [
                                        Text("Refresh",style: TextStyle(fontWeight: FontWeight.bold),),
                                        Icon(Icons.refresh),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                height: MediaQuery.of(context).size.height/15,
                                width: MediaQuery.of(context).size.width/4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black,width: 2)
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("SL",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Row(
                                      children: [
                                        Text("Refresh",style: TextStyle(fontWeight: FontWeight.bold),),
                                        Icon(Icons.refresh),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3.4,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),  // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrange.withOpacity(0.2),
                      blurRadius: 12,
                      offset: Offset(0, 6), // Subtle shadow
                    ),
                  ],
                  border: Border.all(
                    color: Colors.deepOrange, // Border color
                    width: 2.0, // Border thickness
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),  // Match border radius
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange.withOpacity(0.1),  // Light warm gradient
                        Colors.transparent,               // Fade to transparent
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.train_rounded,
                              color: Colors.deepOrange,
                              size: 28,  // Larger icon
                            ),
                            SizedBox(width: 8),
                            Text(
                              "MAQ CHENNAI EXP(16160)",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                letterSpacing: 1.1,  // Spacing for modern feel
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.deepOrange,
                              size: 24,
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.deepOrange.withOpacity(0.4),
                          thickness: 1.2,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("22:05",style: TextStyle(fontSize: 25),),
                            Text("03:00",style: TextStyle(fontSize: 25),),
                          ],
                        ),
                        const Text("Duration: 04h:55m",style: TextStyle(fontSize: 20),),
                        Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/15,
                              width: MediaQuery.of(context).size.width/4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black,width: 2)
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("EC",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Row(
                                    children: [
                                      Text("Refresh",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Icon(Icons.refresh),
                                    ],
                                  ),                            ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                height: MediaQuery.of(context).size.height/15,
                                width: MediaQuery.of(context).size.width/4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black,width: 2)
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("CC",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Row(
                                      children: [
                                        Text("Refresh",style: TextStyle(fontWeight: FontWeight.bold),),
                                        Icon(Icons.refresh),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3.4,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),  // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrange.withOpacity(0.2),
                      blurRadius: 12,
                      offset: Offset(0, 6), // Subtle shadow
                    ),
                  ],
                  border: Border.all(
                    color: Colors.deepOrange, // Border color
                    width: 2.0, // Border thickness
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),  // Match border radius
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange.withOpacity(0.1),  // Light warm gradient
                        Colors.transparent,               // Fade to transparent
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.train_rounded,
                              color: Colors.deepOrange,
                              size: 28,  // Larger icon
                            ),
                            SizedBox(width: 8),
                            Text(
                              "JANSABATHI(12128)",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                letterSpacing: 1.1,  // Spacing for modern feel
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.deepOrange,
                              size: 24,
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.deepOrange.withOpacity(0.4),
                          thickness: 1.2,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("06:30",style: TextStyle(fontSize: 25),),
                            Text("01:50",style: TextStyle(fontSize: 25),),
                          ],
                        ),
                        const Text("Duration: 08h:40m",style: TextStyle(fontSize: 20),),
                        Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/15,
                              width: MediaQuery.of(context).size.width/4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black,width: 2)
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("EC",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Row(
                                    children: [
                                      Text("Refresh",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Icon(Icons.refresh),
                                    ],
                                  ),                            ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                height: MediaQuery.of(context).size.height/15,
                                width: MediaQuery.of(context).size.width/4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black,width: 2)
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("CC",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Row(
                                      children: [
                                        Text("Refresh",style: TextStyle(fontWeight: FontWeight.bold),),
                                        Icon(Icons.refresh),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
