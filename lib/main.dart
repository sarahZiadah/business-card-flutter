import 'package:flutter/material.dart';

void main() {
  runApp(BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff7D231A),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xffF1ECCE),
                radius: 111,
                // decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(1000),
                // border: Border.all(color: Color(0xffF1ECCE),
                // width: 1.5,
                //   ),
                // ),
                //another way 
                child: CircleAvatar(
                  radius: 110,
                  // borderRadius: BorderRadius.circular(1000),
                  backgroundImage: AssetImage('images/icon.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Sarah Ziadah",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xffF1ECCE),
                    fontFamily: 'Allan',
                  ),
                ),
              ),
              Text(
                "ITE STUDENT",
                style: TextStyle(
                  color: Color.fromARGB(255, 200, 199, 190),
                  fontSize: 23,
                  fontFamily: 'Allan',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 200, 199, 190),
                indent: 30,
                endIndent: 30,
              ),

              // Card(
              //   margin: EdgeInsets.symmetric(horizontal: 22,vertical: 8),
              //   child: ListTile(
              //     leading: Icon(
              //       Icons.phone,
              //       size: 30,
              //       color: Color.fromARGB(255, 36, 55, 94),
              //     ),
              //     title: Text(
              //       "(+963)968539576",
              //       style: TextStyle(color: Colors.black, fontSize: 18),
              //     ),
              //   ),
              // ),
              //another way 

              details(Icons.call, "+9639********"),
              details(Icons.email, "MyEmail@gmail.com"),
            ],
          ),
        ),
      ),
    );
  }

  Widget details(IconData icon, String info) {
    return Container(
      margin: EdgeInsets.only(bottom: 15, top: 5),
      height: 60,
      width: 350,
      decoration: BoxDecoration(
        color: Color(0xffF1ECCE),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Icon(icon, size: 30, color: Color(0xff7D231A)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Text(
              info,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
