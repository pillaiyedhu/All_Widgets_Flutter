import 'package:flutter/material.dart';

class BannerDemo extends StatefulWidget {
  @override
  BannerDemoState createState() {
    return BannerDemoState();
  }
}

class BannerDemoState extends State<BannerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Widget Viewer"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: Banner(
              message: "20% Off", 
              location: BannerLocation.topEnd,
              child: Container(
                child: Column(
                  children: [
                    Image.asset('picture1.jpg'),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Text("Flutter Course"),
                        ElevatedButton(
                          onPressed: (){}, 
                          child: Text("Claim Now"))
                        
                      ],
                      
                    )
                  ],
                ),
              ),
            ),
          )

        )
    );
  }
}
