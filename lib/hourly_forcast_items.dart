import 'package:flutter/material.dart';


class HourlyForcastItems extends StatelessWidget {
  final IconData icon;
  final String time;
  final String temp;
  const HourlyForcastItems({
    super.key,required this.icon, required this.temp,required this.time,

  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,child: Card(
        child: Container(padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
          child: Column(
            children: [Text(time,style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold),
              maxLines: 1,overflow: TextOverflow.ellipsis,),
             const  SizedBox(height: 10),
              Icon(icon,size: 20,),
             const  SizedBox(height: 10,),
              Text(temp,style:const  TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              maxLines: 1,overflow: TextOverflow.ellipsis,)
              ],
              ),
        ),
            ),);
  }
}