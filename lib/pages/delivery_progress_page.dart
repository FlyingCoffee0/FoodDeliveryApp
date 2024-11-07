import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_receipt.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/services/auth/database/firestore.dart';
import 'package:provider/provider.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {

//get acces to the data base

FireStoreService db = FireStoreService();

  @override
  void initState() {
    super.initState();
    //if you are on this page, submit order to the firestore db
  String receipt = context.read<Restaurant>().displayCartReceipt();
  db.saveOrderToDatabase(receipt);
    
    
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: Column(
        children: [
          MyReceipt(),
        ],
      ),
    );
  }

  // Custom Bottom Nav Bar - Message / or Call Delivery Driver
  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Container(
            //profile picture of driver
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: null,
              icon: const Icon(Icons.person_3),
            ),
          ),
          const SizedBox(
            width: 10,
          ),

          // driver details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tansu",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                "Uysal",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),

          const Spacer(),
          Row(
            children: [
              //message button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: null,
                  icon: const Icon(
                    Icons.message,
                    color: Color.fromARGB(255, 70, 112, 146),
                  ),
                ),
              ),

              const SizedBox(
                width: 10,
              ),

              //call button

              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: null,
                  icon: const Icon(
                    Icons.call,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
