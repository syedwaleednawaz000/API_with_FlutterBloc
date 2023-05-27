import 'package:blocapiyt/presentation/screens/deletepostview.dart';
import 'package:blocapiyt/presentation/screens/home_screen.dart';
import 'package:blocapiyt/presentation/screens/loginview.dart';
import 'package:blocapiyt/presentation/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuggestionScreen extends StatefulWidget {
  const SuggestionScreen({Key? key}) : super(key: key);

  @override
  State<SuggestionScreen> createState() => _SuggestionScreenState();
}

Widget buildButton({required String title, required Function()? ontap}) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.green.withOpacity(0.6),
      ),
      child: Center(
        child: Text(title,style: TextStyle(color: Colors.black),),
      ),
    ),
  );
}

class _SuggestionScreenState extends State<SuggestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildButton(title: "Home Screen",ontap: (){
              Get.to(()=> HomeScreen());
            }),
            SizedBox(height: 10,),
            buildButton(title: "Login",ontap: (){
              Get.to(()=> LoginView());
            }),
            SizedBox(height: 10,),
            buildButton(title: "Register",ontap: (){
              Get.to(()=> RegisterView());
            }),
            SizedBox(height: 10,),
            buildButton(title: "delete post",ontap: (){
              Get.to(()=> DeleteView());
            }),
          ],
        ),
      ),
    );
  }
}
