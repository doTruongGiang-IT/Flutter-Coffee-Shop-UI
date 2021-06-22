import 'package:coffeeshop/ui/detailpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15),
        children: [
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Welcome River", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFF473D3A))),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("images/avatar.jpg"),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              child: Text("Let's select the best taste for your next coffee break !", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300, color: Color(0xFFB0AAA7)),),
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Taste of the week", style: TextStyle(fontSize: 17, color: Color(0xFF473D3A)),),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text("See all", style: TextStyle(fontSize: 15, color: Color(0xFFCEC7C4)),),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            height: 410,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _coffeeListCard("images/starbucks.png", "Caffe Misto", "StarBucks", "Our dark, rich espresso balanced with steamed milk and a light layer of foam", "\$4.99", true),
                _coffeeListCard("images/starbucks.png", "Caffe Misto", "StarBucks", "Our dark, rich espresso balanced with steamed milk and a light layer of foam", "\$4.99", true),
                _coffeeListCard("images/starbucks.png", "Caffe Misto", "StarBucks", "Our dark, rich espresso balanced with steamed milk and a light layer of foam", "\$4.99", true),
                _coffeeListCard("images/starbucks.png", "Caffe Misto", "StarBucks", "Our dark, rich espresso balanced with steamed milk and a light layer of foam", "\$4.99", true),
              ],
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Explore nearby", style: TextStyle(fontSize: 17, color: Color(0xFF473D3A)),),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text("See all", style: TextStyle(fontSize: 15, color: Color(0xFFCEC7C4)),),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            height: 125,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildImage("images/cafe.jpg"),
                _buildImage("images/cafe.jpg"),
                _buildImage("images/cafe.jpg"),
                _buildImage("images/cafe.jpg"),
              ],
            ),
          ),
          SizedBox(height: 20,),

        ],
      ),
    );
  }

  _buildImage(String image) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Container(
        height: 100,
        width: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          ),
        ),
      ),
    ); 
  }

  _coffeeListCard(String img, String name, String shopName, String description, String price, bool isFavourite) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 300,
        width: 225,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 335,
                ),
                Positioned(
                  top: 75,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    height: 260,
                    width: 225,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xFFDAB68C),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 60,),
                        Text("$shopName's", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),),
                        SizedBox(height: 10,),
                        Text(name, style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),),
                        SizedBox(height: 10,),
                        Text(description, style: TextStyle(fontSize: 14, color: Colors.white)),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(price, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF3A4742)),),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white
                              ),
                              child: Center(
                                child: Icon(Icons.favorite, color: isFavourite ? Colors.red : Colors.grey, size: 15,),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 170,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(img),
                        fit: BoxFit.contain
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPaage(),));
              },
              child: Container(
                height: 50,
                width: 225,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xFF473D3A),
                ),
                child: Center(
                  child: Text("Order Now", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}