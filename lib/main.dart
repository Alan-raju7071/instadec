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
    "dp": "data:image/jpeg;base64,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",
    "bg": "https://images.pexels.com/photos/25785391/pexels-photo-25785391/free-photo-of-pipe-on-a-red-wall.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  
  
  {
    "name": "dtilnb",
    "dp": "https://images.pexels.com/photos/6313570/pexels-photo-6313570.jpeg?auto=compress&cs=tinysrgb&w=600",
    "bg": "https://images.pexels.com/photos/3736910/pexels-photo-3736910.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "cgjlig",
    "dp": "https://images.pexels.com/photos/7526322/pexels-photo-7526322.jpeg?auto=compress&cs=tinysrgb&w=600",
    "bg": "https://images.pexels.com/photos/2823948/pexels-photo-2823948.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "khfcmkh",
    "dp": "https://images.pexels.com/photos/6335292/pexels-photo-6335292.jpeg?auto=compress&cs=tinysrgb&w=600",
    "bg": "https://images.pexels.com/photos/2567859/pexels-photo-2567859.jpeg?auto=compress&cs=tinysrgb&w=600"
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
                  fit: BoxFit.cover,
                    image: NetworkImage(imagelist[index]["bg"]
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
                  leading:  CircleAvatar(backgroundImage: NetworkImage(imagelist[index]["dp"]),),
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