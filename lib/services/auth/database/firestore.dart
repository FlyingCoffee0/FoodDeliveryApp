import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService {
  //get collection of orders

  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');

  //save order to database
 Future<void> saveOrderToDatabase(String receipt) async {
  try {
    await orders.add({
      'date': DateTime.now(),
      'order': receipt,
    });
    print('Order saved successfully');
  } catch (e) {
    print('Failed to save order: $e');
  }
}
}
