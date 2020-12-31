import "package:flutter/material.dart";

class MainPage extends StatelessWidget {

  var services = [
    "House Cleaning Service",
    "Carpet Cleaning Service",
    "Grass Cutting Service",
    "Paint job Service",
    "Home Sanitization Service",
    "Vacuuming Service",
    "Window Cleaning Service",
    "Wiring Service",
  ];

  var images = [
    "image/broom.jpg",
    "image/carpet.jpg",
    "image/grass.png",
    "image/paint.png",
    "image/sanitizer.png",
    "image/vacuum.png",
    "image/window.png",
    "image/wiring.png",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Home'),
      ),
        body: Padding(
        padding: EdgeInsets.all(8),
          child: GridView.builder(
           itemCount: services.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height/2)
            ),
    itemBuilder: (BuildContext context,int index){
    return Card(
       child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
            ),
           Image.asset(images[index],height: 50,width: 50,),
          Padding(
           padding: EdgeInsets.all(20),
            child: Text(services[index],style: TextStyle(fontSize: 16,height: 1.2,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
         ),
        ],
    ),

    );
           }
    ),
    ));
    }
}


