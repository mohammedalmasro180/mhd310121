import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class viewall extends StatefulWidget {
  @override
  _viewallState createState() => _viewallState();
}

class _viewallState extends State<viewall> {

  List users = [];
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.fetchUser();
  }
  fetchUser() async {
    setState(() {
      isLoading = true;
    });
    var url = "https://tpowep.com/shops/shop/api.php";
    var response = await http.get(url);
    // print(response.body);
    if(response.statusCode == 200){
      var items = json.decode(response.body);
      print(items);
      setState(() {
        users = items;
        isLoading = false;
      });
    }else{
      users = [];
      isLoading = false;
    }

  }

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
  child: Column(
    children: [
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
        //color: Colors.black12,
        width: 880,
        height: 888,
        child: GridView.builder(
    gridDelegate:
    new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),


    itemCount: users.length,
    //scrollDirection: Axis.horizontal,

    itemBuilder: (context, index) {
      var text=users[index]['product_title'];
    var img=users[index]['product_image'];
      var pric=users[index]['product_price'];
      String url="https://tpowep.com/shops/shop/product_images/"+img.toString();


      return Padding(padding: EdgeInsets.all(10),
          child:  Container(
              margin: EdgeInsets.only(left: 15),
              width: 150,
              height:250,
              color: Colors.white,
              child: Column(
                children: [

                  Container(
                    width: 350,
                    margin: EdgeInsets.all(5),

                    child: Column(

                      children: [

                        Row(
                          children: [

                            Container(

                              child: IconButton(
                                icon: Icon(Icons.favorite),
                              ),
                            ),
                            Container(
                              color: Colors.limeAccent,
                              alignment: Alignment.topLeft,
                              child: Text("15%",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),),
                            ),
                          ],
                        ),
                        Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 100,
                                width: 100,

                                child: Image.network(url),

                                /*CachedNetworkImage(
                                  imageUrl: url,
                                  placeholder: (context,url) => CircularProgressIndicator(),
                                  errorWidget: (context,url,error) => new Icon(Icons.error),
                                ),
                                //Ige(image: CachedNetworkImageProvider(")),
                                //child: NetworkImage(")
*/
                            ),
                          ],
                       ),
                        Divider(),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(1),
                              child: Text(text.toString()),),
                            Padding(padding: EdgeInsets.all(10),
                              child: Text(pric.toString()+"  \$"),)

                          ],
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(5),
                              child: Icon(Icons.star),),
                            Padding(padding: EdgeInsets.all(5),
                              child: Icon(Icons.star),),
                            Padding(padding: EdgeInsets.all(5),
                              child: Icon(Icons.star),),
                            Padding(padding: EdgeInsets.all(5),
                              child: Text("612",style: TextStyle(color: Colors.black26),),),

                          ],
                        ),

                      ],
                    ),
                  ),


                ],
              )

          )

      );
    }
        ),
      ),

    ],
  ),
),
    );
  }
}
