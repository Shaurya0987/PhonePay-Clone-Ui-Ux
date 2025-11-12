import 'package:flutter/material.dart';

class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18,right: 18,top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              prefixIcon:Icon(Icons.search),
              hintText: "Search for 'Contacts'",
              hintStyle: TextStyle(fontWeight: FontWeight.bold),
              filled: true,
              fillColor:Colors.grey.shade300,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12)
              )
            ),
          ),
          SizedBox(height: 35,),
          Text("Popular",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _popular(icon:Icons.wallet , label: "Wallet"),
              _popular(icon:Icons.mobile_friendly_sharp , label: "Mobile\nRecharge"),
              _popular(icon:Icons.lan_outlined , label: "Loan\nRepayment"),
              _popular(icon:Icons.car_rental_rounded , label: "FASTag\nRecharge"),
            ],
          )
        ],
      ),
    );
  }
}

Widget _popular({required IconData icon,required String label}){
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(color: Colors.grey)
        ),
        child: Icon(icon,color: Colors.deepPurple,size: 45,),
      ),
      SizedBox(height: 8,),
      Text(label,textAlign: TextAlign.center,style:TextStyle(
        fontWeight: FontWeight.bold,
      ),)
    ],
  );
}
