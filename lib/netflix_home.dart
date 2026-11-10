import 'package:flutter/material.dart';

class NetflixHome extends StatefulWidget {
  const NetflixHome({super.key});

  @override
  State<NetflixHome> createState() => _NetflixHomeState();
}

class _NetflixHomeState extends State<NetflixHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
            leading: Icon(Icons.menu,color: Colors.white,),
            title: Text('NETFLIX',style: TextStyle(color: Color(0xffDB202C),fontSize: 28,),),
            centerTitle: true,
            actions: [
              Icon(Icons.notifications,color: Colors.white,),
              SizedBox(width: 10,)
            ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.mic,color: Colors.white,),
                    hint: Text("search...",style: TextStyle(color: Colors.white, fontSize: 18),),
                    prefixIcon: Icon(Icons.search,color: Colors.white,),
                    fillColor: Colors.white24,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
                  ),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Movies",style: TextStyle(color: Colors.white, fontSize:15 ),),
                      
                      Container(
                        height: 30,
                        width: 100, 
                        
                        decoration: BoxDecoration(
                          color: Color(0xffDB202C),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Text("Web Series",style: TextStyle(color: Colors.white),),
                        alignment: Alignment.center,
                      ),
                      
                      Text("TV Shows",style: TextStyle(color: Colors.white),),
                      
                      Text("Music",style: TextStyle(color: Colors.white,),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: 300,
                            width: 200,
                          
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/m1.jpg"),fit: BoxFit.fill),
                          
                              borderRadius: BorderRadius.circular(10)
                            ),
                            // child: Image.asset("assets/m1.jpg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: 300,
                            width: 200,
                            decoration:BoxDecoration(
                              image:DecorationImage(image: AssetImage("assets/m2.jpg"),fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: 300,
                            width: 200,
                            decoration:BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/m3.jpg"),fit: BoxFit.fill),
                              borderRadius:BorderRadius.circular(10
                              )
                              
                            )
                          ),
                        ),
                        Container(
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/m4.jpg"),fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(10
                            )
                            )
                          ),
                        
                      ],
                    ),
                    
                  ),
                  SizedBox(width: 15,),
          
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("New Release",style: TextStyle(color: Colors.white),),
                    Text("View All",style: TextStyle(color: Colors.white),
                    )
                  ],),
                  SizedBox(height: 20,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/m6.jpg"),fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10),
                                
                              ),
                             ),
                            ),
                          ],
                        ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          image:DecorationImage(image: AssetImage("assets/m4.jpg"),fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(10),
                                            
                        )),
                      ),
                      Container(
                        height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        image:DecorationImage(image: AssetImage("assets/m7.jpg"),fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(10),
                    
                      )),
                      ],
                      
                    ),
                  )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Color(0xffDB202C),),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.play_circle_outline,color: Colors.white,),label: "",),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: Colors.white,),label: "",),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined,color: Colors.white,),label: ""),
          ]
          ),
    );
  }
}