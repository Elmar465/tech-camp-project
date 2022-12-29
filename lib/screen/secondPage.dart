// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter_one/screen/mySquare.dart';
import 'package:google_fonts/google_fonts.dart';



import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    List<String> info = ["Kurslar", "Maliyyə ödənişləri", "Profil", "Email"]; 
    List<String> info2 = ["Flutter"];
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
           gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF000428), Color(0xFF004e92) ]
            )
        ),
        child: SafeArea(
          
          child: ListView.builder(
            itemCount: info.length,
            itemBuilder: (context, index) {
              return Square(
                child: info[index],
              );
            },
          )
        ),
      ),
    );
  }

 
  
}
// class SecondPage extends StatelessWidget {
//   final List<String>  entries  =  ['Profile', 'Admissions', 'Financial Account', 'Communication Center'];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
        
//         child: ListView(
          
//           // ignore: prefer_const_literals_to_create_immutables
//           children: [
//             ListTile(
//               leading: Icon(Icons.add_home_outlined, size: 40.0, color: Colors.blue,),
//               title: Text("Kurslar", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 20.0),),
//             ),
//             SizedBox(height:10.0,),
//             ListTile(
//               leading: Icon(Icons.money,size: 40.0, color: Colors.blue,),
//               title: Text("Maliyyə ödənişləri", style:GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 20.0) ,),
//             ),
//             ListTile(
//               leading: Icon(Icons.person,size: 40.0, color: Colors.blue,),
//               title: Text("Profil", style:GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 20.0) ),
//             ),
//             ListTile(
//               leading: Icon(Icons.email, size: 40.0, color: Colors.blue,),
//               title: Text("Email", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 20.0),),
//             ),
//           ],
//         )
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.search),
//         onPressed: () {
          
//         },
//       ),
//     );
//   }

  Center secondPage(BuildContext context) {
    return Center(
      child: ElevatedButton(
        
        autofocus: true,
        onPressed: () {
          Navigator.pop(context);
        },
        child: const  Text(""),
      ),
    );
  }

