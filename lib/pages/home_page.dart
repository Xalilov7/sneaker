
import 'package:flutter/material.dart';
import 'package:sneaker/models/shoe.dart';
import 'package:sneaker/pages/shoe_detail.dart';
import 'package:sneaker/widgets/background_clipper.dart';
import 'package:sneaker/widgets/shoe_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu, color: Colors.black,),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Browse by Catego", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3.15,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                   scrollDirection: Axis.horizontal,
                    itemCount: categoriesShoes.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                         onTap: () => {
                           Navigator.push(context, MaterialPageRoute(builder: (context){
                             return ShoeDetail(shoe: categoriesShoes[index]);
                           }))
                         },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipPath(
                              clipper: BackgroundClipper(),
                              child: Container(
                                color: categoriesShoes[index].bgColor.withOpacity(0.75),
                                width: MediaQuery.of(context).size.width / 1.8,
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Image.asset(
                                          "assets/${categoriesShoes[index].imageName}",
                                          height: 100,
                                        ),
                                        Container(
                                          height: 50,
                                          width: MediaQuery.of(context).size.width/3.5,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(100),
                                              boxShadow: [ BoxShadow(
                                                  color: Colors.black.withOpacity(0.25),
                                                  spreadRadius: 10,
                                                  blurRadius: 30
                                              )
                                              ]
                                          ),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Text(categoriesShoes[index].name,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(categoriesShoes[index].price,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white
                                      ),
                                    ),
                                    SizedBox(height: 20,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                )
                ),
                SizedBox(
                  height: 20,
                ),
                Divider()
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 30, top: 30, bottom: 20),
              child: Text(
                "Recommended for You",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ShoeGrid(shoes: [
          Shoe("Black Sneakers", "2.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec maximus tellus. Fusce elementum nibh ", "\$330.85", Color(0xFFF616163), [Colors.red, Colors.pink, Colors.yellow]),
          Shoe("Black Sneakers", "3.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec maximus tellus. Fusce elementum nibh ", "\$400.85", Color(0xFFF685235), [Colors.red, Colors.pink, Colors.yellow]),
          Shoe("Black Sneakers", "4.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec maximus tellus. Fusce elementum nibh ", "\$580.85", Color(0xFFF525227), [Colors.red, Colors.pink, Colors.yellow]),
          Shoe("Black Sneakers", "5.jfif", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec maximus tellus. Fusce elementum nibh ", "\$830.85", Color(0xFFF625408), [Colors.red, Colors.pink, Colors.yellow]),
          Shoe("Black Sneakers", "6.jfif", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec maximus tellus. Fusce elementum nibh ", "\$630.85", Color(0xFFF625500), [Colors.red, Colors.pink, Colors.yellow]),
          Shoe("Black Sneakers", "2.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec maximus tellus. Fusce elementum nibh ", "\$530.85", Color(0xFFF612552), [Colors.red, Colors.pink, Colors.yellow]),
        ],)
        ],
      ),
    );
  }
}
