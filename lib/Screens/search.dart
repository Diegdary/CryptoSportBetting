import 'package:flutter/material.dart';
import 'package:backdrop_modal_route/backdrop_modal_route.dart';


class Searchpage extends StatelessWidget {
  const Searchpage({Key? key}) : super(key: key);

  @override
  
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pagina de buscar'),
      ),
      body: Center(
       

        child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () => showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          enableDrag: true,
          //backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20)
            )
          ),


          
          builder: (context) => buildsheet(),
        ),
      ),
      
      ),
    );
  }
}
Widget buildsheet()=> DraggableScrollableSheet(
  initialChildSize: 0.7,
  builder: (_,controller)=> Container(
   color: Colors.white,
   
  
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("asjdjasdasdasd",style: TextStyle(fontSize: 24),),
  
      ],),
    
    
    
  
  
  
  
  ),
);
