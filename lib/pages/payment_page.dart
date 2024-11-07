import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/pages/delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  // user want to pay
  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      // only show  dialog if form is valid
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Confirm Payment"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(
                  "Card Number:$cardNumber",
                ),
                Text(
                  "Expiry Date:$expiryDate",
                ),
                Text(
                  "Card Holder Name:$cardHolderName",
                ),
                Text(
                  "CVV:$cvvCode",
                ),
              ],
            ),
          ),
          actions: [
            // Cancel button
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),

            // Yes button
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                 Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DeliveryProgressPage(),
                )
              );
              },
              child: const Text("Yes"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Payment Page'),
      ),
      body: Column(
        children: [
          // Use Expanded to allow the SingleChildScrollView to take available space
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context)
                      .viewInsets
                      .bottom), // Add padding for keyboard
              child: Column(
                children: [
                  // credit card
                  CreditCardWidget(
                    cardNumber: cardNumber,
                    expiryDate: expiryDate,
                    cardHolderName: cardHolderName,
                    cvvCode: cvvCode,
                    showBackView: isCvvFocused,
                    onCreditCardWidgetChange: (p0) {},
                  ),

                  //credit card form
                  CreditCardForm(
                    cardNumber: cardNumber,
                    expiryDate: expiryDate,
                    cardHolderName: cardHolderName,
                    cvvCode: cvvCode,
                    onCreditCardModelChange: (data) {
                      setState(() {
                        cardNumber = data.cardNumber;
                        expiryDate = data.expiryDate;
                        cardHolderName = data.cardHolderName;
                        cvvCode = data.cvvCode;
                      });
                    },
                    formKey: formKey,
                  ),

                  const SizedBox(height: 25), // Add some spacing for the button

                  MyButton(onTap: userTappedPay, text: "Pay Now"),

                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
