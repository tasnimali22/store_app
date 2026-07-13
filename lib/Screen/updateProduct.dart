import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store/context/const.dart';
import 'package:store/model/model.dart';
import 'package:store/services/updateProduct.dart';
import 'package:store/widget/CustomTextFiled.dart';
import 'package:store/widget/customButton.dart';

class UpdateproductScreen extends StatefulWidget {
  UpdateproductScreen({super.key});

  static String id = "updateproduct";

  @override
  State<UpdateproductScreen> createState() => _UpdateproductScreenState();
}

class _UpdateproductScreenState extends State<UpdateproductScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductsModel products =
        ModalRoute.of(context)!.settings.arguments as ProductsModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Updateproduct", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Column(
              children: [
                CustomTextFiled(
                    onchanged: (data) {
                      NameProduct = data;
                    },
                    hintText: " Name Product"),
                const SizedBox(height: 10),
                CustomTextFiled(
                    textInputType: TextInputType.number,
                    onchanged: (data) {
                      price = data;
                    },
                    hintText: " price"),
                const SizedBox(height: 10),
                CustomTextFiled(
                    onchanged: (data) {
                      image = data;
                    },
                    hintText: " image"),
                const SizedBox(height: 10),
                CustomTextFiled(
                    onchanged: (data) {
                      deco = data;
                    },
                    hintText: " title"),
                const SizedBox(height: 50),
                Custombutton(
                    onTap: () async {
                      isLoading = true;
                      setState(() {});
                      try {
                        await Update(products);
                        print("sucess");
                      } catch (e) {
                        print(e.toString());
                      }
                      isLoading = false;
                      setState(() {});
                    },
                    title: "Update"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
