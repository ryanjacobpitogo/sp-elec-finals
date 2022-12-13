import 'package:flutter/material.dart';
import 'recipe_modal.dart';

class RecCard extends StatefulWidget {
 

  const RecCard({super.key,  required this.label, required this.image, required this.name});

  final String image ;
  final String label;
  final String name;


  @override
   @override
  State<RecCard> createState() => _RecCard();
}


class _RecCard extends State<RecCard> {


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
      child: GestureDetector(
        child: Padding( 
          padding: const EdgeInsets.only(left:8.0),
          child: Container(
           width: double.infinity,
           height: 150,
           
           decoration: BoxDecoration(

             image: DecorationImage(
               image: NetworkImage(widget.image), 

               fit:BoxFit.cover
             ),// button text
           ),
          child: Padding(
            padding: const EdgeInsets.only(top: 125.0),
            child: Text(widget.label, style: const TextStyle(
              color: Colors.white,  fontSize: 20
            ),textAlign: TextAlign.end,
            ),
          ),
          ),
        ),
        onTap:(
          

        ){
      
           
            Navigator.of(context).push( MaterialPageRoute(builder: (context) =>  Recview(label: widget.label, image: widget.image,name: widget.name,)));        }
      ),
    );
  }
}