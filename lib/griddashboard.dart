import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {

  Items item1= new Items(
    title: "Ghar",
    subtitle: "घर",
    img: "assets/house.png"
  );
  Items item2= new Items(
      title: "Car",
      subtitle: "कार",
      img: "assets/car.png"
  );
  Items item3= new Items(
      title: "Khat",
      subtitle: "खाट",
      img: "assets/bed.png"
  );
  Items item4= new Items(
      title: "Syau",
      subtitle: "स्याऊ",
      img: "assets/apple.png"
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4];
    var color = 0xff453658;
    return Flexible(
      child:GridView.count(
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: myList.map((data) {
          return Container(
            decoration: BoxDecoration(
              color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(data.img, width: 55,),
                  SizedBox(
                    height: 14,
                  ),
                  Text(data.title, style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(height: 8,),
                  Text(data.subtitle, style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Colors.white38,
                          fontSize: 10,
                          fontWeight: FontWeight.w600)),
                  ),
                  IconButton(
                    alignment: Alignment.topCenter,
                    icon: Image.asset("assets/sound.png", width: 15,),
                    onPressed: () {},
                  ),
                ],
              ),
          );
        }).toList()),
    );
  }
}
          
 
          
class Items {
  String title;
  String subtitle;
  String img;
  Items({this.title,this.subtitle,this.img});
}