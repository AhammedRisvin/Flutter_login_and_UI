import 'package:flutter/material.dart';
import 'package:login_app/Screens/info.dart';

class ScreenStore extends StatelessWidget {
  ScreenStore({super.key});

  List<String> iconImages = [
    "assets/icons/marketing.png",
    "assets/icons/mobile-payment.png",
    "assets/icons/discount.png",
    "assets/icons/customer.png",
    "assets/icons/qr-code.png",
    "assets/icons/indian-rupee.png",
    "assets/icons/contact-form.png",
  ];

  List<String> textOne = [
    "Marketing Designs",
    "Online Payment",
    "Discount Coupons",
    "My Customers",
    "Store QR Code",
    "Extra Charges",
    "Order Form",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.blue,
        title: const Text('Manage Store'),
        centerTitle: true,
        elevation: 10,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const ScreenInfoo()),
            );
          },
          icon: const Icon(Icons.menu),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 7,
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / .8,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                var textdata = textOne[index];
                var imageIcon = iconImages[index];
                return Card(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: index == 0
                                  ? Colors.red
                                  : index == 1
                                      ? Colors.green
                                      : index == 2
                                          ? Colors.yellow
                                          : index == 3
                                              ? Colors.greenAccent
                                              : index == 4
                                                  ? Colors.grey
                                                  : index == 5
                                                      ? Colors.blueGrey
                                                      : Colors.purple,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                imageIcon,
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            textdata,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
