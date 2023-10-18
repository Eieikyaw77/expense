import 'package:budget_management/util/color.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Create Your Expense",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            // height: 300,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Expense Name",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  //controller: homeNoController,
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 15, color: Colors.black),
                  onChanged: (val) {},
                  decoration: InputDecoration(
                    labelText: "Expense Name",
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.only(left: 20, right: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(),
                    ),

                    //fillColor: Colors.green
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Amount",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  //controller: homeNoController,
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 15, color: Colors.black),
                  onChanged: (val) {},
                  decoration: InputDecoration(
                    labelText: "Amount",
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.only(left: 20, right: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(),
                    ),

                    //fillColor: Colors.green
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  //controller: homeNoController,
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 15, color: Colors.black),
                  onChanged: (val) {},
                  decoration: InputDecoration(
                    labelText: "Expense Name",
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.only(left: 20, right: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(),
                    ),

                    //fillColor: Colors.green
                  ),
                  keyboardType: TextInputType.text,
                )
              ],
            ),
          ),
        ));
  }
}
