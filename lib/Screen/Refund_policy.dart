import 'package:vini/Helper/Color.dart';
import 'package:flutter/material.dart';

class RefundPolicy extends StatefulWidget {
  const RefundPolicy({super.key});

  @override
  State<RefundPolicy> createState() => _RefundPolicyState();
}

class _RefundPolicyState extends State<RefundPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Return & Refund Policy',
            style: TextStyle(color: colors.red),
          ),
          backgroundColor: colors.whiteTemp,
          iconTheme: IconThemeData(color: Colors.red),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                        'At MyTop10Store, we appreciate our clients, so we ensure that returns are straightforward. That’s why we have a regret-free 3-day returns policy. You have three days from the date of receiving your item to request a return. To qualify, the item must be unused, unworn, with all tags attached, and in its original packaging. Remember that receipts or proof of purchase are a must for claiming the return.\n\nContact us on mailto:support@mytop10store.com and your return will be initiated right away. Once the return request is approved, our team will reach out and schedule a pick-up to collect the item within the next 2-3 days. Keep in mind that any items returned without request will not be accessible.\n\nIf your order has shipped with damage or if the item is not what you have ordered, please be sure to check the item and reach out to us right after receiving it. We will evaluate the situation and get back to you instantly with the best solution. There are, however, certain items that can’t be returned, such as perishable products (food, flowers, or plants), individually or specially crafted items, beauty products, dangerous items, flammable liquids or gasses, and specific personal care products. Additionally, we do not accept returns on sale items or gift cards. If you are unsure whether your item qualifies for a return, feel free to get in touch with us.\n\nFor exchanges, the fastest way is to return the original item first. Once your return is accepted, you can place a new order separately for the desired item.\n\nOnce we receive and inspect your returned item, we will process your refund based on your chosen payment method—whether it’s UPI, credit/debit card, or any other payment mode used at the time of purchase. Refunds typically take a 2 business days to reflect in your account, depending on your bank or payment provider’s processing time.\n\nFor any return-related queries, our support team is always available at mailto:support@mytop10store.com. We’re here to ensure a smooth, transparent, and stress-free shopping experience for you!'),
                    SizedBox(
                      height: 50,
                    )
                  ]),
            )));
  }
}
