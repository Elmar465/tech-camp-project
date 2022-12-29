// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_one/screen/loginPage.dart';
import 'package:flutter_one/screen/secondPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';



class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
     body: SizedBox(
  
       child: Container(
        // padding: EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            centerAnimations(),
                firstButton(context),
                secondButton(context)

            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     // firstButton(context),
            //     // secondButton(context)
            //   ],
            // )
          ],
        ),
       ),
        
     )
    
    );
  }

  Center centerAnimations() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 30.0),
        padding: EdgeInsets.only(top: 90.0),
        width: 400.0,
        height: 400.0,
        child: Lottie.network("https://assets5.lottiefiles.com/packages/lf20_clrqwhav.json", filterQuality: FilterQuality.high,fit: BoxFit.fill ),
      ),
    );
  }

  Container imageContainer() {
    return Container(
      child: SafeArea(child:Container( height: 200.0,
    width: 350.0,
    margin: const EdgeInsets.only(top: 100.0),
    // ignore: prefer_const_constructors
    decoration: BoxDecoration( 
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            spreadRadius: 4.0,
          )
        ],
      // ignore: prefer_const_constructors
      image: DecorationImage(
        fit: BoxFit.fill,
        filterQuality: FilterQuality.high,
        // ignore: prefer_const_constructors
        image:NetworkImage("https://1.bp.blogspot.com/-yzqeqlTvrPc/YLeCpe0U-mI/AAAAAAAAKRA/Qp40_OPvx-k4LhXpZZHF47_TITTxdTb0QCLcBGAsYHQ/s0/pasted%2Bimage%2B0%2B%252852%2529.png")),
    ),
    ),
     
    
    ),
    
    // color: Colors.blue,
    // alignment: Alignment.topCenter,
  );
  }

  // Center centerImage() {
  //   return Center(  
  //       child: SizedBox(
  //         width: 220.0,
  //         height: 20.0,
  //         child: Container(
  //           decoration: const BoxDecoration(
  //             color: Colors.blue,
  //             image: DecorationImage(
  //               invertColors: true,
  //               image: NetworkImage("https://media.licdn.com/dms/image/C4E0BAQFIlMsI7kG48A/company-logo_200_200/0/1657990735490?e=1680134400&v=beta&t=3IIeGpn8EEdV1wdCY8laNgOIiXIcQeCef03Br8kWKws",)      
  //             )
  //           ),
  //         ),
  //       ),
  //     );
  // }


SafeArea secondButton(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        // height: 10.0,
        child: Expanded(
          child: Center(
            // heightFactor: 10.0,
            child: Container(
              // margin: const EdgeInsets.fromLTRB(20, 0, 0, 100),
              margin: const EdgeInsets.only(left: 20.0),
              padding: const EdgeInsets.fromLTRB(10.10, 10, 15, 10),
              // padding: const EdgeInsets.only(right: 1.0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(30.0),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                      minimumSize: MaterialStateProperty.all(Size(340.0, 50)),
                      fixedSize: MaterialStateProperty.all(Size(330, 50)),
                      side: MaterialStateProperty.all(BorderSide(color: Colors.green)),

                    ),
                    onHover: (value) {
                    },
                    child: Text("Employee Portal", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 20.0,)),
                    onPressed: () {
                     // ignore: prefer_const_constructors
                     Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SafeArea firstButton(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        // height: 5.0,
        child: Expanded(
          child: Center(
            child: Container(
              margin: const EdgeInsets.only(left: 20.0),
              padding: const EdgeInsets.fromLTRB(10.10, 10, 10, 10),
              alignment: Alignment.center,
              child: Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(30.0),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                      minimumSize: MaterialStateProperty.all(Size(340.0, 50)),
                      fixedSize: MaterialStateProperty.all(Size(330, 50)),
                      side: MaterialStateProperty.all(BorderSide(color: Colors.green)),
                    ),
                    child: Text("Student Portal", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 23.0, color: Colors.white)),
                    onPressed: () {
                     // ignore: prefer_const_constructors
                     Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  

//   Column imageContainer() {
//     return Column(
//       children: [
//         Container(
//           // ignore: prefer_const_constructors
//           decoration: BoxDecoration(
//             // ignore: prefer_const_constructors
//             image: DecorationImage(
//               // ignore: prefer_const_constructors
//               image: NetworkImage("https://www.techjourney.org/wp-content/uploads/2022/03/2022TechCampLogo3Color-Transparent-500x500-1-300x300.png"),
//               fit: BoxFit.none
//             ),
//           ),
//         ),
//       ]
//     );
//   } 
// }
}