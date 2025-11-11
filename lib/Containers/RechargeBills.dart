import 'package:flutter/material.dart';

class Rechargebills extends StatelessWidget {
  const Rechargebills({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 13),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13,vertical: 8),
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Recharge & Pay Bills",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _bills(icon: Icons.mobile_friendly, label: "Mobile\nReharge"),
                _bills(icon: Icons.satellite_alt, label: "DTH"),
                _bills(icon: Icons.electric_bolt_rounded, label: "Electricity"),
                _bills(icon: Icons.credit_score_sharp, label: "Credit Card\n Bill"),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _bills(icon: Icons.house, label: "Rent\nPayment"),
                _bills(icon: Icons.location_city, label: "Loan\nReplacement"),
                _bills(icon: Icons.book_rounded, label: "Book a\nCylinder"),
                _bills(icon: Icons.more_horiz, label: "See All"),

              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _bills({required IconData icon,required String label}){
  return Container(
    child: Column(
      children: [
        Icon(icon,color: Colors.deepPurple,),
        SizedBox(height: 5,),
        Text(label,textAlign: TextAlign.center, 
          style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400
        ),)
      ],
    ),
  );
}
