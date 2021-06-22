import 'package:flutter/material.dart';

class DetailPaage extends StatefulWidget {
  const DetailPaage({ Key? key }) : super(key: key);

  @override
  _DetailPaageState createState() => _DetailPaageState();
}

class _DetailPaageState extends State<DetailPaage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 20,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFF3B2B7),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2 - 20,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2 + 25,
                left: 15,
                child: Container(
                  height:  (MediaQuery.of(context).size.height / 2) - 50,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    children: [
                      Text("Preparation time", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF726B68)),),
                      SizedBox(height: 7,),
                      Text("5 min", style: TextStyle(fontSize: 12, color: Color(0xFF726B68)),),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(right: 35),
                        child: Container(
                          height: 0.5,
                          color: Color(0xFFC6C4C4),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("Ingredients", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF726B68)),),
                      SizedBox(height: 20,),
                      Container(
                        height: 110,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            _buildIngredientItem("Water", Icon(Icons.water, size: 20, color: Colors.white,), Color(0xFF6FC5DA)),
                            _buildIngredientItem("Water", Icon(Icons.track_changes_outlined, size: 20, color: Colors.white,), Color(0xFF615955)),
                            _buildIngredientItem("Water", Icon(Icons.track_changes_outlined, size: 20, color: Colors.white,), Color(0xFF8FC28A)),
                            _buildIngredientItem("Water", Icon(Icons.track_changes_outlined, size: 20, color: Colors.white,), Color(0xFF3B8079)),
                            _buildIngredientItem("Water", Icon(Icons.track_changes_outlined, size: 20, color: Colors.white,), Color(0xFFF8B870)),
                            _buildIngredientItem("Water", Icon(Icons.track_changes_outlined, size: 20, color: Colors.white,), Color(0xFFF39595)),
                            _buildIngredientItem("Water", Icon(Icons.track_changes_outlined, size: 20, color: Colors.white,), Color(0xFF473D3A)),
                            _buildIngredientItem("Water", Icon(Icons.track_changes_outlined, size: 20, color: Colors.white,), Color(0xFFC6C4C4)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 35),
                        child: Container(
                          height: 0.5,
                          color: Color(0xFFC6C4C4),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("Nutrition  Information", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF726B68)),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Calories", style: TextStyle(fontSize: 14, color: Color(0xFF726B68)),),
                          SizedBox(width: 15,),
                          Text("250", style: TextStyle(fontSize: 12, color: Color(0xFF716966)),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Proteins", style: TextStyle(fontSize: 14, color: Color(0xFF726B68)),),
                          SizedBox(width: 15,),
                          Text("10g", style: TextStyle(fontSize: 12, color: Color(0xFF716966)),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Caffeine", style: TextStyle(fontSize: 14, color: Color(0xFF726B68)),),
                          SizedBox(width: 15,),
                          Text("150mg", style: TextStyle(fontSize: 12, color: Color(0xFF716966)),),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.only(right: 35),
                        child: Container(
                          height: 0.5,
                          color: Color(0xFFC6C4C4),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: EdgeInsets.only(right: 25),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Color(0xFF473D3A),
                          ),
                          child: Center(
                            child: Text("Make an order", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 10,
                left: 150,
                child: Container(
                  height: 330,
                  width: 330,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/starbucks.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 25,
                left: 15,
                child: Container(
                  height: 300,
                  width: 225,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                              child: Container(
                              height: 100,
                              child: Text("Caramel Macchiato", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Icon(Icons.favorite, size: 18, color: Colors.red,),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Container(
                        width: 170,
                        child: Text("Freshly steamed milk with vanilla-flavored syrup is marked with espresso and topped with caramel drizzel for an oh-so-sweet finish", style: TextStyle(fontSize: 13, color: Colors.white),),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFF473D3A)
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("4.2", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),),
                                  Text("/5", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Color(0xFF7C7573)),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 80,
                                  ),
                                  Positioned(
                                    left: 40,
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        border: Border.all(
                                          color: Color(0xFFF3B2B7),
                                          style: BorderStyle.solid,
                                          width: 1,
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage("images/avatar.jpg"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        border: Border.all(
                                          color: Color(0xFFF3B2B7),
                                          style: BorderStyle.solid,
                                          width: 1,
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage("images/avatar.jpg"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        border: Border.all(
                                          color: Color(0xFFF3B2B7),
                                          style: BorderStyle.solid,
                                          width: 1,
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage("images/avatar.jpg"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 3,),
                              Text("+ 12 more", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildIngredientItem(String ingre, Icon icon, Color color) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color,
            ),
            child: Center(
              child: icon,
            ),
          ),
          SizedBox(height: 4,),
          Container(
            width: 60,
            child: Center(
              child: Text(ingre, textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Color(0xFFC2C0C0)),),
            ),
          ),
        ],
      ),
    );
  }
}