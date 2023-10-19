import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

   var dialog = AlertDialog(
    title: Text("Create an Account!"),
    content: Text("Do you create a facebook account?"),
    actions: [
      TextButton(onPressed: (){
        Navigator.pop(context);
      }, child: Text("Calcel")),

      TextButton(onPressed: (){
        Navigator.pop(context);
      }, child: Text("Ok")),
    ],
   );

    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
        centerTitle: true,
      ),
      body: SafeArea(child: Center(
        child: TextButton(
          onPressed: (){
          showDialog(context: context, builder: (context) => dialog);
        }, child: Text("Click Here",style: TextStyle(
          fontSize: 20,color: Colors.pink
        ),)),
      )),
    );
  }
}