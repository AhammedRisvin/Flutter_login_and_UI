import 'package:flutter/material.dart';

class ScreenPremium extends StatefulWidget {
  const ScreenPremium({super.key});

  @override
  State<ScreenPremium> createState() => _ScreenPremiumState();
}

class _ScreenPremiumState extends State<ScreenPremium> {
  int isPressed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        color: Colors.blue,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                            Text(
                              "Dukaan Premium",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 15,
                  right: 15,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)),
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_bag),
                                Text(
                                  "dukaan premium",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "GET DUKAAN PREMIUM FOR JUST",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "₹4999/year",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8, left: 8, right: 8),
                            child: Text(
                              "All the advanced features for scaling your",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            "business",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 17, bottom: 15),
              child: Row(
                children: [
                  Text(
                    "Features",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: ListTile(
                title: Text(
                  "Custom domain name",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  "Get your own custom domain and build your brand on the internet",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                leading: Icon(Icons.domain_rounded),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 8,
              ),
              child: ListTile(
                title: Text(
                  "Verified seller badge",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  "Get gree verified badge under your store name and build trust",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                leading: Icon(Icons.verified),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 8,
              ),
              child: ListTile(
                title: Text(
                  "Dukaan for PC",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                    "Access all the wxclusive premium features on dukaan PC",
                    style: TextStyle(
                      fontSize: 16,
                    )),
                leading: Icon(Icons.laptop),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 8,
                bottom: 8,
              ),
              child: ListTile(
                title: Text(
                  "Priority support",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                    "Get your questions resolved with our priority customer support",
                    style: TextStyle(
                      fontSize: 16,
                    )),
                leading: Icon(Icons.headphones),
              ),
            ),
            const Divider(
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "What is Dukaan Premium?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/thumbnail.jpg")),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                      ),
                      // child: ClipOval(
                      //   child: Image.asset(
                      //     "assets/images/thumbnail.jpg",
                      //     fit: BoxFit.fill,
                      //   ),
                      // ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 8),
                    child: Text(
                      "Freequently asked questions",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const ExpansionTile(
              title: Text(
                "What type of buissiness can use dunkaan premium?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              children: [
                ListTile(
                  title: Text(
                      "Incredibly fast storefronts. Don't take our word for it, start selling online and see it for yourself!"),
                ),
              ],
            ),
            const ExpansionTile(
              title: Text(
                "What is your refund policy?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              children: [
                ListTile(
                  title: Text(
                      "Incredibly fast storefronts. Don't take our word for it, start selling online and see it for yourself!"),
                ),
              ],
            ),
            const ExpansionTile(
              title: Text(
                "will there be a automatic charge after the paid trail?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              children: [
                ListTile(
                  title: Text(
                      "Incredibly fast storefronts. Don't take our word for it, start selling online and see it for yourself!"),
                ),
              ],
            ),
            const ExpansionTile(
              title: Text(
                "what payment method do you use?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              children: [
                ListTile(
                  title: Text(
                      "Incredibly fast storefronts. Don't take our word for it, start selling online and see it for yourself!"),
                ),
              ],
            ),
            const Divider(thickness: 2),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 8),
                    child: Text(
                      "Need help? Get in touch",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.message, size: 30),
                      Text(
                        "Live chat",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.call, size: 30),
                      Text(
                        "Phone call",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .45,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.blue),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text("Select Domain"),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .45,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text("Get Premium"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
