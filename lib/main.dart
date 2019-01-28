import 'package:flutter/material.dart';
import 'bookdet.dart';
import 'details.dart';

void main() {
  runApp(MaterialApp(
      title: "Auto Atheneum",
      home: AppWrapper(),));
}

class AppWrapper extends StatefulWidget {
  @override
  _AppWrapperState createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> with SingleTickerProviderStateMixin {
  TabController controller;        
  @override                                    
  void initState(){                             
    super.initState();
    controller = TabController(vsync: this,length: 2);   
  }
  @override
  void dispose(){                           
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    double bookSpacing = w / 45.0;
    GestureDetector gestD(String dir){
      print("Called");
      return GestureDetector(
         child: Image.asset(
           dir,
           fit: BoxFit.fill,
           height: h / 9.0,
         ),
           onTap: () async {
           Navigator.push(context,MaterialPageRoute(builder: (context) {
            return BookPage("New book",dir);
           }));
          }
      );
    }
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: null,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 100.0,

            floating: true,            
            pinned: true,
            snap: true,
            //title: Text("Auto Atheneum"),
            flexibleSpace: FlexibleSpaceBar(        
              title: Text("Auto Atheneum"),
              background: Image.asset("assets/gbooks.jpg",fit: BoxFit.fill, ),

            ),
            bottom: TabBar(

                controller: controller,
              tabs: <Widget>[
                Text("1st Shelf"),
                Text("2nd Shelf"),
              ]  
           )
          ),
          SliverFillRemaining(             
            child: TabBarView(              
              controller: controller,
              children: <Widget>[
                Stack(
                 children: <Widget>[
                   Container(
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage("assets/shelf.jpg"),
                          fit: BoxFit.fitWidth
                        )
                      ),
                    ),
                    SingleChildScrollView(
                    child: Container(
                      color: Colors.transparent,
                       child: Column(
                       children: <Widget>[

//                          for(var i = 0; i <=5; i++) {
//                             Padding(
//                               padding: EdgeInsets.only(left: h / 25.0, top: h / 9.0),
//                               child: Row(
//                                   children: <Widget>[
//                                      for (var j = 0; j < count; j++) {
//                                         GestD('assets/${Shelf1[i][j][0]}.jpg'),
//                                         Padding(padding: EdgeInsets.all(bookSpacing)),
//                                     };
//                                   ],
//                                 ),
//                               ),
//                         },

                         Padding(
              padding: EdgeInsets.only(left: h / 30.0, top: h / 16.0),
              child: Row(
                children: <Widget>[
                  gestD('assets/Never Let me Go.jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/The Bone Clocks.jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/The Snow Child.jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/Black Moon.jpg')
                ],
              ),
            ),
                         Padding(
              padding: EdgeInsets.only(left: h / 30.0, top: h / 28.0),
              child: Row(
                children: <Widget>[
                  gestD('assets/The Graveyard Book.jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/Jane Eyre.jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/Pride and Prejudice .jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/Romeo and Juliet .jpg'),
                ],
              ),
            ),
                         Padding(
              padding: EdgeInsets.only(left: h / 25.0, top: h / 30.0),
              child: Row(
                children: <Widget>[
                  gestD('assets/The Notebook .jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/The Time Travelers Wife .jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/The Bourne Identity .jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/The Da Vinci Code.jpg'),
                ],
              ),
            ),
                         Padding(
              padding: EdgeInsets.only(left: h / 30.0, top: h / 30.0),
              child: Row(
                children: <Widget>[
                  gestD('assets/The Girl with the Dragon Tattoo.jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/The Hobbit .jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/The Hunger Games .jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/And Then There Were None .jpg'),
                ],
              ),
            ),
                         Padding(
              padding: EdgeInsets.only(left: h / 25.0, top: h / 30.0),
              child: Row(
                children: <Widget>[
                  gestD('assets/Angels & Demons.jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/In Cold Blood .jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/Rebecca .jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/The Godfather .jpg'),
                ],
              ),
            )
                       ],
                     )
            
                     )
                    ) 
                  ],
                )
                ,Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/shelf.jpg"),
                              fit: BoxFit.fitWidth
                          )
                      ),
                    ),
                    SingleChildScrollView(
                        child: Container(
                            color: Colors.transparent,
                            child: Column(
                              children: <Widget>[

                                // for(var i = 0; i <=5; i++) {
                                //     Padding(
                                //       padding: EdgeInsets.only(left: h / 25.0, top: h / 9.0),
                                //       child: Row(
                                //           children: <Widget>[
                                //              for (var j = 0; j < count; j++) {
                                //                 GestD('assets/${Shelf1[i][j][0]}.jpg'),
                                //                 Padding(padding: EdgeInsets.all(bookSpacing)),
                                //             };
                                //           ],
                                //         ),
                                //       ),
                                // },

                                Padding(
                                  padding: EdgeInsets.only(left: h / 30.0, top: h / 16.0),
                                  child: Row(
                                    children: <Widget>[
                                      gestD('assets/The Communist Manifesto .jpg'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('assets/The Complete Works .jpg'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('assets/The Odyssey .jpg'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('assets/The Republic .jpg')
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: h / 30.0, top: h / 28.0),
                                  child: Row(
                                    children: <Widget>[
                                      gestD('assets/A Life in Parts.jpg'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('assets/A Moveable Feast.jpg'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('assets/Born Standing Up.jpg'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('assets/Kitchen Confidential.jpg'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: h / 25.0, top: h / 30.0),
                                  child: Row(
                                    children: <Widget>[
                                      gestD('assets/The Autobiography of Malcolm X as told by Alex Haley.jpg'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('assets/Dracula .jpg'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('assets/Frankenstein.jpg'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('assets/The Comeplete H P Lovecraft Collection.jpg'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: h / 30.0, top: h / 30.0),
                                  child: Row(
                                    children: <Widget>[
                                      gestD('assets/The Exorcist.jpg'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('assets/The Turn of the Screw.jpg'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('assets/A Double Life .jpg'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('assets/An Unwanted Guest .jpg'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: h / 25.0, top: h / 30.0),
                                  child: Row(
                                    children: <Widget>[
                                      gestD('assets/Bring Me Back .jpg'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('assets/Give Me Your Hand.jpg'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('assets/The Good Son.jpg'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('assets/HEART BERRIES.jpg'),
                                    ],
                                  ),
                                )
                              ],
                            )

                        )
                    )
                  ],
                )
              ]
            )   
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Icon(Icons.bookmark_border,color: Colors.white,),
            Text("Book name",style: TextStyle(color: Colors.white,fontSize: 20.0),)
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          filterdialog(context);
        },
        tooltip: "filter",
        child: Icon(Icons.search),
      ),
    );
    
  }
}

void filterdialog(BuildContext context)
  {
   var dialog = SimpleDialog(
     title: Text("search",),
     
    );
    showDialog(
      context: context,
     builder: (BuildContext context)
     {
      return dialog;
     }
    );

  } 


/*class gestD extends StatelessWidget{
  double h;
    String dir;
    gestD(this.dir,this.h);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                      child: new Image.asset(
                        dir,
                        fit: BoxFit.fill,
                        height: h / 9.0,
                      ),
                      onTap: () {
                        Navigator.of(context)
                            .push(new MaterialPageRoute(builder: (builder) {
                          return new BookPage(name: "New book");
                        }));
                      });
  }

}
*/
