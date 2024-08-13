import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   List imagelist = [
  {
    "name": "dgkog",
    "dp": "https://images.pexels.com/photos/7673840/pexels-photo-7673840.jpeg?auto=compress&cs=tinysrgb&w=600",
    "background": "https://images.pexels.com/photos/25785391/pexels-photo-25785391/free-photo-of-pipe-on-a-red-wall.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  
  
  {
    "name": "dtilnb",
    "dp": "https://images.pexels.com/photos/6313570/pexels-photo-6313570.jpeg?auto=compress&cs=tinysrgb&w=600",
    "background": "https://images.pexels.com/photos/3736910/pexels-photo-3736910.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "cgjlig",
    "dp": "https://images.pexels.com/photos/7526322/pexels-photo-7526322.jpeg?auto=compress&cs=tinysrgb&w=600",
    "background": "https://images.pexels.com/photos/2823948/pexels-photo-2823948.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "khfcmkh",
    "dp": "https://images.pexels.com/photos/6335292/pexels-photo-6335292.jpeg?auto=compress&cs=tinysrgb&w=600",
    "background": "https://images.pexels.com/photos/2567859/pexels-photo-2567859.jpeg?auto=compress&cs=tinysrgb&w=600"
  }
];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: PageView.builder(
          itemCount: imagelist.length,
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imagelist[index]["dp"]
                    ),
                ),
            ),
            child: Column(
              children: [
                Divider(
                  color: Colors.white,
                  thickness: 3,
                ),
                ListTile(
                  leading:  CircleAvatar(backgroundImage: NetworkImage(imagelist[index]["background"]),),
                  title: Text(imagelist[index]["name"],
                  style: 
                  TextStyle(color: Colors.white),),
subtitle: Text("10 minutes ago",style: TextStyle(color: Colors.white,fontSize: 10),),
trailing: Icon(Icons.more_vert,color: Colors.white,),
                ),
                Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Text(
                        "Send a message",
                        style: TextStyle(color: Colors.white,fontSize: 14)),
                      ),
                      ),
                    

                  SizedBox(width: 10),
                  Icon(Icons.favorite,color: Colors.red,size: 30,),

                  SizedBox(width: 10,),
                  Icon(Icons.send_sharp,color: Colors.white,size: 30,),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}