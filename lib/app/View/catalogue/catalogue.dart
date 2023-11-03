import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/catalogue_controller.dart';
import '../../Controller/info_controller.dart';

// ignore: must_be_immutable
class ScreenCatalogue extends StatelessWidget {
  ScreenCatalogue({super.key});

  CatalogueController catalogueController = Get.put(CatalogueController());
  final InfoController switchController = Get.put(InfoController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Catalogue'),
          centerTitle: true,
          elevation: 10,
          toolbarHeight: 50,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Products",
              ),
              Tab(
                text: "Catagories",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              child: Column(
                children: [
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var dressImage = catalogueController.imageDress[index];
                      var titleText = catalogueController.textTitle[index];
                      var priceTag = catalogueController.priceEach[index];
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
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
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 80,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white10,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.4),
                                            spreadRadius: 2,
                                            blurRadius: 2,
                                            offset: const Offset(0, 2),
                                          ),
                                        ],
                                      ),
                                      child: Image.asset(
                                        dressImage,
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                titleText,
                                                style: const TextStyle(
                                                    fontSize: 19,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              const Icon(Icons.more_vert),
                                            ],
                                          ),
                                          const Text(
                                            "1 pieces",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          Text(
                                            priceTag,
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Obx(
                                            () => Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  "in stock",
                                                  style: TextStyle(
                                                      color: Colors.lightGreen,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Switch(
                                                  value: switchController
                                                      .isSwitched.value,
                                                  onChanged: (value) {
                                                    switchController
                                                        .switchcontroller(
                                                            value);
                                                  },
                                                  activeTrackColor:
                                                      const Color.fromARGB(
                                                          255, 121, 165, 241),
                                                  activeColor: Colors.blue,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                thickness: 2,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.share),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Share Product",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 5,
                    ),
                    itemCount: 6,
                  )
                ],
              ),
            ),
            const Icon(Icons.category_sharp),
          ],
        ),
      ),
    );
  }
}
