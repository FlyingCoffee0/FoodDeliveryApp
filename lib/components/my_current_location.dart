import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatefulWidget {
  const MyCurrentLocation({super.key});

  @override
  State<MyCurrentLocation> createState() => _MyCurrentLocationState();
}

class _MyCurrentLocationState extends State<MyCurrentLocation> {

   final TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose(); // Dispose the controller when done
    super.dispose();
  }

  void openLocationSearchBox(BuildContext context) {
    showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Your Location"),
      content: TextField(
        controller: textController, // Use the defined controller
        decoration: const InputDecoration(hintText: "Enter address..."),
      ),
        actions: [
          // cancel button

          MaterialButton(
            onPressed: () {
                 Navigator.pop(context);
              textController.clear();
            },
            child: const Text('Cancel'),
          ),

          // Save Button

          MaterialButton(
            onPressed: () {
              String newAddress = textController.text;
              context.read<Restaurant>().updateDeliveryAddress(newAddress);
              Navigator.pop(context);
              textController.clear();
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // address
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) => Text(
                    restaurant.deliveryAddress,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                //drop down menu
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
