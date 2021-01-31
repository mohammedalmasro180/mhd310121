import 'package:ecommerce/screen/Product.dart';
import 'package:ecommerce/screen/detiles.dart';
import 'package:ecommerce/screen/viewall.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Yes-Shpp"),
        leading: IconButton(icon: Icon(Icons.menu),onPressed: (){},
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Container(
              height: 11,
              width: 40,
              child: Icon(Icons.ac_unit)

          ),
              // ignore: deprecated_member_use
              title:SizedBox.shrink()

          ),
          BottomNavigationBarItem(icon: Container(
              height: 11,
              width: 40,
              child: Icon(Icons.ac_unit)

          ),
              // ignore: deprecated_member_use
              title:SizedBox.shrink()

          ),
          BottomNavigationBarItem(icon: Container(
              height: 11,
              width: 40,
              child: Icon(Icons.ac_unit)

          ),
              // ignore: deprecated_member_use
              title:SizedBox.shrink()

          ),

        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(5),
              height: 70,
              color: Colors.grey,
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 10),

                    hintText: "filed text",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)

                    )



                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              height: 300,
              width: 856,
              child: Image.asset("img/gsmarena.jpg",fit: BoxFit.fill,),

            ),
            Container(
              margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 15),
              color: Colors.white,
              child: Row(
              children: [
                Container(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                            height: 100,
                            width: 100,

                            child: Image.asset("img/camera.jpg")
                        ),
                        Container(
                          child: Text("data"),
                        )

                      ],
                    ),

                  ),
                ),
                Container(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                            height: 100,
                            width: 100,

                            child: Image.asset("img/camera.jpg")
                        ),
                        Container(
                          child: Text("data"),
                        )

                      ],
                    ),

                  ),
                ),
                Container(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                            height: 100,
                            width: 100,

                            child: Image.asset("img/camera.jpg")
                        ),
                        Container(
                          child: Text("data"),
                        )

                      ],
                    ),

                  ),
                ),
                Container(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                            height: 100,
                            width: 100,

                            child: Image.asset("img/camera.jpg")
                        ),
                        Container(
                          child: Text("data"),
                        )

                      ],
                    ),

                  ),
                ),
                Container(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                            height: 100,
                            width: 100,

                            child: Image.asset("img/camera.jpg")
                        ),
                        Container(
                          child: Text("data"),
                        )

                      ],
                    ),

                  ),
                ),

              ],
            ),),
            Container(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4 ,
                  itemBuilder: (BuildContext ctx,int index){
                    return Container(
                      padding: EdgeInsets.only(left: 5,bottom: 5,top: 5,right: 5),
                      height: 125,
                      width: 250,
                      child: Image.asset("img/camera.jpg"),
                    );

                  }),

            ),
            Container(
              padding: EdgeInsets.only(left: 5,top: 5,right:5,bottom: 5),
              height: 350,
//              color: Colors.amber,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text("addres",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),),
                  ),
                  Container(
                    height:250,
                    child: Products()
                  ),
                  Center(
                    child: InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> new viewall()));
                    },
                    child: Text("VIEW ALL",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),),
                  )
                  
                ],
              ),

            )
          ],),

        ),


      ),

    );
  }
}
