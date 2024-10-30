import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  int _selectedIndex = 0; // Track the selected tab

  // Method to handle navigation between tabs
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Map<String, dynamic>> bookedItems = [
    {'name': 'Train A', 'price': 100.0},
    {'name': 'Seat 5', 'price': 50.0},
  ];

  double get totalPrice => bookedItems.fold(0, (sum, item) => sum + item['price']);
  double get gst => totalPrice * 0.18; // 18% GST
  double get totalPayment => totalPrice + gst;

  String? _selectedPaymentMethod;

  void _showPaymentDetails() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Payment Details"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Subtotal: ₹${totalPrice.toStringAsFixed(2)}"),
              Text("GST (18%): ₹${gst.toStringAsFixed(2)}"),
              Text("Total Payment: ₹${totalPayment.toStringAsFixed(2)}"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  void _handlePaymentMethod(String? method) {
    if (method != null) {
      setState(() {
        _selectedPaymentMethod = method;
      });

      // Show payment details dialog after selecting a method
      _showPaymentDetails();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking Confirmation"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Items Booked",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              itemCount: bookedItems.length,
              itemBuilder: (context, index) {
                final item = bookedItems[index];
                return ListTile(
                  title: Text(item['name']),
                  trailing: Text("₹${item['price'].toStringAsFixed(2)}"),
                );
              },
            ),
            const SizedBox(height: 24),
            const Text(
              "Select Payment Method",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                RadioListTile<String>(
                  title: const Text("Rewards"),
                  value: "Rewards",
                  groupValue: _selectedPaymentMethod,
                  onChanged: _handlePaymentMethod,
                ),
                RadioListTile<String>(
                  title: const Text("UPI"),
                  value: "UPI",
                  groupValue: _selectedPaymentMethod,
                  onChanged: _handlePaymentMethod,
                ),
                RadioListTile<String>(
                  title: const Text("Scan QR"),
                  value: "Scan QR",
                  groupValue: _selectedPaymentMethod,
                  onChanged: _handlePaymentMethod,
                ),
                RadioListTile<String>(
                  title: const Text("Cash"),
                  value: "Cash",
                  groupValue: _selectedPaymentMethod,
                  onChanged: _handlePaymentMethod,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_selectedPaymentMethod != null) {
            _showPaymentDetails();
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Please select a payment method")),
            );
          }
        },
        child: const Icon(Icons.check),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 35),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border, size: 35),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on, size: 35),
            label: 'Location',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
