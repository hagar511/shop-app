import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15,top: 100),
          child: Column(
            children: [
            Image.asset("assets/28497-6-diamond-logo.png",height: 90,fit: BoxFit.cover,),
            Text('SHRINE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 50,),
         MyBody() ],),
        ),
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20,top: 80),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "UserName",
              filled: true,
              fillColor: Colors.black12
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
                hintText: "Password",
                filled: true,
                fillColor: Colors.black12
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            TextButton(onPressed: (){
              setState(() {
                Container(
                  decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(20)),
                  child: Text("CANCEL",style: TextStyle(color: Colors.deepPurple),),);
              });
            }, child: Text("CANCEL",style: TextStyle(color: Colors.deepPurple))),
            SizedBox(width: 10,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));

            }, child: Text("Next",style: TextStyle(color: Colors.deepPurple)
            )),
          ],)
        ],
      ),
    );
  }
}







