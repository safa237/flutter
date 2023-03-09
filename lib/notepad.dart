import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notepad extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Colors.yellow,child: Icon(
        Icons.add,
        color: Colors.black,
      ),),
      appBar: AppBar(elevation: 0.0,backgroundColor: Colors.white),
      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(

         // mainAxisAlignment: MainAxisAlignment.start,
         // crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text("Notepad",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            SizedBox(height: 40,),


            TextField(
              decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none
                  ),
                  hintText: "search notes",prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.black

              ),
            ),
            SizedBox(height: 50,),
            Container(
              color: Colors.green,


              child: ListTile(
                shape: CircleBorder(side: BorderSide(style: BorderStyle.none)),

                title: Text('todays grocery list'),
                subtitle: Text('march 7,2023 9:50 pm'),


                // style: BorderRadiusDirectional.circular(8.0),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              color: Colors.yellow,

              child: ListTile(

                title: Text('rich dad poor dad quotes'),
                subtitle: Text('june 22 2023 9:58 pm'),


                // style: BorderRadiusDirectional.circular(8.0),
              ),
            )


          ],
        ),
      ),
    );
  }
}