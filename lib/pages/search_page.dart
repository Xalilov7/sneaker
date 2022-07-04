import 'package:flutter/material.dart';
import 'package:sneaker/widgets/shoe_grid.dart';

import '../models/shoe.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
     slivers: [
       SliverAppBar(
         backgroundColor: Colors.white,
         pinned: true,
         title: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 15),
           child: Container(
             padding: EdgeInsets.only(left: 15),
             height: 45,
             decoration: BoxDecoration(
               color: Theme.of(context).primaryColor,
               borderRadius: BorderRadius.circular(10)
             ),
             child: TextField(
               cursorColor: Colors.grey.shade500,
               decoration: InputDecoration(
                 hintText: "Search",
                 hintStyle: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.grey.shade500,
                   fontSize: 16,
                 ),
                 border: InputBorder.none,
                 suffixIcon: Icon(Icons.mic, color: Colors.black,)
               ),
               style: TextStyle(color: Colors.black, fontSize: 16),
             ),
           ),
         ),
       ),

       SliverToBoxAdapter(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const SizedBox(height: 10),
             const Divider(),
             Padding(
               padding: const EdgeInsets.only(top: 25, left: 30, bottom: 15),
               child: Text("TRENDING NOW",
               style: TextStyle(
                 fontSize: 14,
                 color: Colors.grey,
                 fontWeight: FontWeight.bold
               ),
               ),
             )
           ],
         ),
       ),
       ShoeGrid(shoes: [Shoe("sada", "sad", "dasdas", "dasda", Colors.yellow,  [Colors.red ]),
         Shoe("sada", "sad", "dasdas", "dasda", Colors.blue,  [Colors.red ]),
         Shoe("sada", "sad", "dasdas", "dasda", Colors.red,  [Colors.red ]),
         Shoe("sada", "sad", "dasdas", "dasda", Colors.black12,  [Colors.red ]),
         Shoe("sada", "sad", "dasdas", "dasda", Colors.cyan,  [Colors.red ])
       ],)
     ],
    );
  }
}
