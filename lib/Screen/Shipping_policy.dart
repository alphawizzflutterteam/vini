import 'package:vini/Helper/Color.dart';
import 'package:flutter/material.dart';

class ShippingPolicy extends StatefulWidget {
  const ShippingPolicy({super.key});

  @override
  State<ShippingPolicy> createState() => _ShippingPolicyState();
}

class _ShippingPolicyState extends State<ShippingPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Shipping Policy', style: TextStyle(color: Colors.red)),
        backgroundColor: colors.whiteTemp,
        iconTheme: const IconThemeData(color: Colors.red),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'DELIVERY POLICY A',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Please note that the free shipping policy will apply only if specified so as part of promotional campaigns or special offers.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Please note our shipping policies as below -',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'A complete postal address including pin code, email id and contact number is essential to help us ship your order. Kindly cross-check your pin-code and contact number before you complete your order.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'If the ordered item is in stock, it will be packed and dispatched from our warehouse within 1-3 working days.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'However, if some of the ordered items are not in stock, then we will get them produced and have them dispatched within 10 working days of the order being placed. We will keep you informed under such circumstances.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Our courier partners will be able to deliver the shipment to you between Monday to Saturday: 9 am to 7 pm.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Working days exclude public holidays and Sundays. Delivery time is subject to factors beyond our control including unexpected travel delays from our courier partners and transporters due to weather conditions and strikes.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'As soon as your package is dispatched, we will email you your order tracking details. Kindly bear with us until then.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'For any further clarifications, please contact us at support@vini.com.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'vini\nBus Stand, Milkpur, Po. - Manchal, Teh. - Behror, Distt. - Alwar, Raj. - 301701',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
