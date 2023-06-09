import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:vinpearl_app/page_detail/page_golf_detail.dart';

class GolfPage extends StatelessWidget {
  const GolfPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text("Vinpearl Golf")),
        actions: [
          GestureDetector(
            onTap: () {

            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: badges.Badge(
                position: badges.BadgePosition.topEnd(top: 1, end: 0),
                badgeAnimation: const badges.BadgeAnimation.scale(),
                child: const Icon(
                  Icons.shopping_cart,
                  size: 35,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1,
            mainAxisSpacing: 25,
          ),
          itemCount: 1,
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GolfPageDetail(),));
              },
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),

                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network('https://statics.vinpearl.com/styles/1440x622/public/2022_04/Vinpearl-Golf-Banner-PC-Nha-Trang_1650520557.png.webp?itok=VtpzLrY4', width: 350, fit: BoxFit.cover)
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(7.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // name Service
                              Text(
                                "Vinpearl Golf Nha Trang",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 8,),
                              Row(
                                children: [
                                  Icon(Icons.phone_rounded),
                                  SizedBox(width: 5,),
                                  Text("(+84) 258 359 0919"),
                                ],
                              ),
                              
                              SizedBox(height: 8,),
                              Row(
                                children: [
                                  Image.asset("assets/images/maps-and-flags.png", width: 20,),
                                  SizedBox(width: 5,),
                                  Expanded(
                                      child: Text("Hon Tre Island, Vinh Nguyen Ward, Nha Trang City", overflow: TextOverflow.ellipsis,))
                                ],
                              ),
                              
                              SizedBox(height: 8,),
                              Row(
                                children: [
                                  Icon(Icons.mail_outlined),
                                  SizedBox(width: 5,),
                                  Text("teetime-nhatrang@vinpearl.com")
                                ],
                              )
                            ],
                          ),
                        )
                    )
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
