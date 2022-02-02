import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp( 
    //(home:) home property determines what's gonna be shown in the homescreen of our app.
    //create a stateless widget that will return a widget tree to be shown in the homescreen
    home: IdCard() //instantiate the IdCard class,
  )); //MaterialApp
}

//the stateless widget
class IdCard extends StatelessWidget {
  const IdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //will return a widget tree that will be shown in the homescreen
    //scaffold allows us to quickly make a layout for our app (appbar, etc...)
    return Scaffold(
      //body color
      backgroundColor: Colors.grey[900],
      //appbar widget
      appBar: AppBar(
        title: const Text("ID Card"), //appbar title
        centerTitle: true, //center appbar title
        backgroundColor: Colors.grey[850], //appbar color
        elevation: 0.0, //remove the drop shadow
      ),
      //body with padding
      body: Padding(
        //padding for the body content
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        //child that will contain column
        child: Column(
          //align everything to the start
          crossAxisAlignment: CrossAxisAlignment.start,
          //column widget will contain children property with a list of widgets
          children: <Widget> [
            //circle avatar widget is for image to be avatar with circular shape
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/profile_pic.jpeg"),
                radius: 40,
              ),
            ),
            //divider for the avatar and main content
            const Divider(
              height: 60,
              color: Colors.black,
            ),
            //text widget
            const Text(
              "Name:",
              //textstyle
              style: TextStyle(
                color: Colors.grey,
                //2px spacing between every characters
                letterSpacing: 2.0
              ),
            ),
            //sizedbox widget acts like a space between two stacked text
            //it is like an invisibble box that acts like a space between the stacked text
            const SizedBox(height: 10.0,),
            const Text(
              "Marianne Rario",
              //textstyle
              style: TextStyle(
                color: Colors.amber,
                //2px spacing between every characters
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30.0,),
            const Text(
              "University:",
              //textstyle
              style: TextStyle(
                color: Colors.grey,
                //2px spacing between every characters
                letterSpacing: 2.0
              ),
            ),
            //sizedbox widget acts like a space between two stacked text
            //it is like an invisibble box that acts like a space between the stacked text
            const SizedBox(height: 10.0,),
            const Text(
              "Jose Rizal University",
              //textstyle
              style: TextStyle(
                color: Colors.amber,
                //2px spacing between every characters
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30.0,),
            const Text(
              "Contact #:",
              //textstyle
              style: TextStyle(
                color: Colors.grey,
                //2px spacing between every characters
                letterSpacing: 2.0
              ),
            ),
            //sizedbox widget acts like a space between two stacked text
            //it is like an invisibble box that acts like a space between the stacked text
            const SizedBox(height: 10.0,),
            const Text(
              "+63 9083345667",
              //textstyle
              style: TextStyle(
                color: Colors.amber,
                //2px spacing between every characters
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30.0, width: 0,),
            
            //create a row so that two widgets can sit next to each other
            Row(
              children: const <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 20,),
                Text(
                  "marianne.rario@my.jru.edu",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    letterSpacing: 1

                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
