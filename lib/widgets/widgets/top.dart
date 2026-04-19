import 'package:flutter/material.dart';

class toppage extends StatelessWidget {
  const toppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
                child: Image.asset(
                  "assets/cuate.png",
                  width: 350,
                  height: 235.85,
        
                ),  
              ),
      
            Container(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 85),
                    child: Text("سيتم توصيل طعامك خلال",style: TextStyle(color:Color(0xff686868) ,fontSize: 13,fontWeight: FontWeight.w700),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 113),
                    child: Row(
                      spacing: 2,
                      children: [
                        Text("دقيقه",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color:Colors.orange[900]),),
                        Text("20/15",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black))
                      ],
                    ),
                  )
                ],
              ),
        
              
          ),
        ],
      ),
         
    ); 
  }
}