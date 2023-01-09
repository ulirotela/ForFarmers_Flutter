import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmapp/model/product_model.dart';
import 'package:farmapp/providers/user_details_provider.dart';
import 'package:farmapp/resources/cloudfirestore_methods.dart';
import 'package:farmapp/utils/color_themes.dart';
import 'package:farmapp/utils/constants.dart';
import 'package:farmapp/utils/utils.dart';
import 'package:farmapp/widgets/cart_item_widget.dart';
import 'package:farmapp/widgets/custom_main_button.dart';
import 'package:farmapp/widgets/user_details_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:farmapp/widgets/search_bar_widget.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: SearchBarWidget(
        hasBackButton: false,
        isReadOnly: true,
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: kAppBarHeight / 2,
                ),
                Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection("users")
                          .doc(FirebaseAuth.instance.currentUser!.uid)
                          .collection("cart")
                          .snapshots(),
                      builder: (context,
                          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                              snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return CustomMainButton(
                              child: const Text(
                                "Loading",
                              ),
                              color: yellowColor,
                              isLoading: true,
                              onPressed: () {});
                        } else {
                          return CustomMainButton(
                              child: Text(
                                "Proceed to buy (${snapshot.data!.docs.length}) items",
                                style: const TextStyle(color: Colors.black),
                              ),
                              color: yellowColor,
                              isLoading: false,
                              onPressed: () async {
                                await CloudFirestoreClass().buyAllItemsInCart(
                                    userDetails:
                                        Provider.of<UserDetailsProvider>(
                                                context,
                                                listen: false)
                                            .userDetails);
                                Utils().showSnackBar(
                                    context: context, content: "Done");
                              });
                        }
                      },
                    )),
                Expanded(
                    child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("users")
                      .doc(FirebaseAuth.instance.currentUser!.uid)
                      .collection("cart")
                      .snapshots(),
                  builder: (context,
                      AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                          snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Container();
                    } else {
                      return ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            ProductModel model = ProductModel.getModelFromJson(
                                json: snapshot.data!.docs[index].data());
                            return CartItemWidget(product: model);
                          });
                    }
                  },
                ))
              ],
            ),
            UserDetailsBar(
              offset: 0,
            ),
          ],
        ),
      ),
    );
  }
}