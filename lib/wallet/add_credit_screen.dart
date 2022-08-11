import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AddCreditScreen extends StatelessWidget {
  const AddCreditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cards = <String, IconData>{
      'AMERICAN EXPRESS': Icons.card_membership,
      'DISCOVER': Icons.abc,
      "PAYPAL": Icons.paypal_outlined,
      'VISA DEBIT CARD': Icons.vertical_shades_closed,
      "MASTERCARD": Icons.card_giftcard_rounded,
    };

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Add Credit',
          style: TextStyle(
              fontSize: 20,
              color: Color(0xFF4B4B4B),
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Container(
            height: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/image.jpg'),
                  fit: BoxFit.contain),
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            'Provide Card Details',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF1B1B1B),
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 25),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFF0091FF).withOpacity(0.1),
              suffixIcon: const Icon(Icons.credit_card),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color(0xFF3E77A5),
                  style: BorderStyle.solid,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              hintStyle: TextStyle(
                color: Colors.grey.withOpacity(0.8),
              ),
              hintText: 'Card number',
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFF0091FF).withOpacity(0.1),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xFF3E77A5),
                    style: BorderStyle.solid,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.8),
                ),
                hintText: 'Cardholder\'s name number'),
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF0091FF).withOpacity(0.1),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xFF3E77A5),
                        style: BorderStyle.solid,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.8),
                    ),
                    hintText: 'MM/YY',
                  ),
                ),
              ),
              const SizedBox(width: 50),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.info,
                          color: Colors.black,
                        ),
                      ),
                      filled: true,
                      fillColor: const Color(0xFF0091FF).withOpacity(0.1),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xFF3E77A5),
                          style: BorderStyle.solid,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.8),
                      ),
                      hintText: 'CVV'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text:
                      'By clicking the button below, you confirm that you have read and accepted their ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                TextSpan(
                  text: 'Terms and Conditions',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.green,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  )),
              child: const Text(
                'Transfer N${10000}',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            'Supported Cards',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: List.generate(
              5,
              (index) => Expanded(
                child: Container(
                  height: 54,
                  alignment: Alignment.center,
                  child: FittedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          cards.values.elementAt(index),
                          size: 30,
                          color: Colors.grey,
                        ),
                        Text(
                          cards.keys.elementAt(index),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFeatures: [
                              FontFeature.superscripts(),
                            ],
                            fontSize: 7,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
