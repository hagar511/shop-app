import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.line_weight_sharp)),
        title: Text("SHRINE"),
        actions: [
           Icon(Icons.search),
           SizedBox(width: 10,),
           Icon(Icons.clear_all_sharp),
        ],
      ),
      body: MyBody(),
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
    return GridView.count(
      padding: EdgeInsets.all(20),
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      mainAxisSpacing: 20,
      childAspectRatio: 10/15,
      crossAxisSpacing: 20,
      clipBehavior: Clip.none,
      shrinkWrap: true,
      children: List.generate( 8, (index) {
        return Container(
          height: 50,
          decoration: BoxDecoration(color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
          ),
          child: Column(children: [
              Image.asset("assets/png-clipart-logo-diamond-diamond-gemstone-angle-thumbnail.png",width: 180,),
            SizedBox(height: 20,),
            Text("BackBag",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 10,),
            Text("\$20",style: TextStyle(fontWeight: FontWeight.bold)),

          ],),
        );
      },),
    );
  }
}

