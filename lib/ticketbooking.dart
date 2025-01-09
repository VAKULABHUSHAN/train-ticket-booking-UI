import 'package:easybook/view%20train.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For formatting the date

class tb extends StatefulWidget {
  const tb({super.key});

  @override
  State<tb> createState() => _tbState();
}

class _tbState extends State<tb> {
  // Variable to store selected date
  DateTime? _selectedDate;
  String? _startPoint;
  String? _endPoint;

  // List of Tamil districts
  final List<String> tamilDistricts = [
    "Chennai","Coimbatore","Madurai","Tiruchirappalli","Salem","Tirunelveli","Thanjavur",
    "Vellore","Erode","Dindigul","Kanyakumari","Nagapattinam","Perambalur","Thiruvarur",
    "Krishnagiri","Ariyalur","Tenkasi","Namakkal","Cuddalore","Theni",
    "Ramanathapuram", "Pudukkottai","Kanchipuram","Thiruvallur","Tirupur","Villupuram",
    "Chengalpattu","Thoothukudi","Virudhunagar","Thiruvarur",
    "Dindigul","Tirupathur"
  ];

  // Method to show date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  // Method to show district selection dialog
  void _showDistrictDialog(BuildContext context, bool isStartPoint) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(isStartPoint ? 'Select Start Point' : 'Select End Point'),
          content: Container(
            height: 200,
            width: double.maxFinite,
            child: ListView.builder(
              itemCount: tamilDistricts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tamilDistricts[index]),
                  onTap: () {
                    setState(() {
                      if (isStartPoint) {
                        _startPoint = tamilDistricts[index];
                      } else {
                        _endPoint = tamilDistricts[index];
                      }
                    });
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Center(
          child: Text(
            "Train search",
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
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 7,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: Offset(0, 4), // Shadow direction
                  ),
                ],
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://static.vecteezy.com/system/resources/thumbnails/035/865/395/small_2x/diesel-locomotive-isolated-on-white-background-freight-train-with-diesel-or-electric-engine-side-view-of-powerful-locomotive-cargo-train-railroad-transportation-flat-illustration-vector.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.3), // Dark overlay
                      Colors.transparent
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => _showDistrictDialog(context, true), // Show dialog for start point
                child: AbsorbPointer(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.train),
                      border: OutlineInputBorder(),
                      hintText: _startPoint ?? "Enter start point",
                    ),
                  ),
                ),
              ),
            ),
            Icon(Icons.compare_arrows_sharp, size: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => _showDistrictDialog(context, false), // Show dialog for end point
                child: AbsorbPointer(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.train),
                      border: OutlineInputBorder(),
                      hintText: _endPoint ?? "Enter end point",
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => _selectDate(context), // Show date picker on tap
                child: AbsorbPointer(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.calendar_today),
                      border: OutlineInputBorder(),
                      hintText: _selectedDate == null
                          ? "Select a date"
                          : "Selected date: ${DateFormat('yyyy-MM-dd').format(_selectedDate!)}", // Display the formatted date
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Center(
                  child: Text(
                    "SEARCH TRAINS",
                    style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const vt(),
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
