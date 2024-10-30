import 'package:flutter/material.dart';
import 'package:transportx/page/home.dart';

class Train extends StatefulWidget {
  const Train({super.key});

  @override
  _TrainBookingPageState createState() => _TrainBookingPageState();
}

class _TrainBookingPageState extends State<Train> {
  String? _selectedTrain;
  String? _selectedDeparture;
  String? _selectedArrival;
  String? _selectedSeat;
  DateTime? _departureTime;
  DateTime? _arrivalTime;

  final List<String> trains = ['Train A', 'Train B', 'Train C'];
  final List<String> locations = ['Downtown', 'Central Station', 'Mall'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Train Booking",
          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/Train.png', // Ensure this image exists in your assets
                      height: 100,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Choose Train",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              DropdownButton<String>(
                value: _selectedTrain,
                isExpanded: true,
                hint: const Text("Select Train"),
                items: trains.map((String train) {
                  return DropdownMenuItem<String>(
                    value: train,
                    child: Text(train),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedTrain = newValue;
                  });
                },
              ),
              const SizedBox(height: 16),
              const Text(
                "Departure Location",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              DropdownButton<String>(
                value: _selectedDeparture,
                isExpanded: true,
                hint: const Text("Select Departure Location"),
                items: locations.map((String location) {
                  return DropdownMenuItem<String>(
                    value: location,
                    child: Text(location),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedDeparture = newValue;
                  });
                },
              ),
              const SizedBox(height: 16),
              const Text(
                "Arrival Location",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              DropdownButton<String>(
                value: _selectedArrival,
                isExpanded: true,
                hint: const Text("Select Arrival Location"),
                items: locations.map((String location) {
                  return DropdownMenuItem<String>(
                    value: location,
                    child: Text(location),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedArrival = newValue;
                  });
                },
              ),
              const SizedBox(height: 16),
              const Text(
                "Select Departure Time",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () async {
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (selectedTime != null) {
                    setState(() {
                      _departureTime = DateTime(
                        DateTime.now().year,
                        DateTime.now().month,
                        DateTime.now().day,
                        selectedTime.hour,
                        selectedTime.minute,
                      );
                    });
                  }
                },
                child: Text(
                  _departureTime != null
                      ? '${_departureTime!.hour}:${_departureTime!.minute}'
                      : "Pick Time",
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Select Arrival Time",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () async {
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (selectedTime != null) {
                    setState(() {
                      _arrivalTime = DateTime(
                        DateTime.now().year,
                        DateTime.now().month,
                        DateTime.now().day,
                        selectedTime.hour,
                        selectedTime.minute,
                      );
                    });
                  }
                },
                child: Text(
                  _arrivalTime != null
                      ? '${_arrivalTime!.hour}:${_arrivalTime!.minute}'
                      : "Pick Time",
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Select Seat",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              DropdownButton<String>(
                value: _selectedSeat,
                isExpanded: true,
                hint: const Text("Select Seat"),
                items: List.generate(30, (index) => "Seat ${index + 1}")
                    .map((String seat) {
                  return DropdownMenuItem<String>(
                    value: seat,
                    child: Text(seat),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedSeat = newValue;
                  });
                },
              ),
              const SizedBox(height: 24),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Booking Confirmed"),
                          content: const Text("Train booked successfully!"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => Home()),
                                );
                              },
                              child: const Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Confirm Booking",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
