import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem =[
    'assets/images/img.png',
    'assets/images/img_1.png',
    'assets/images/img_2.png',
    'assets/images/img_3.png',
    'assets/images/img_4.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.black,
      appBar: AppBar( backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Apple Production'),centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Padding(padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(color: Colors.grey,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text('7',style: TextStyle(color: Colors.white),),),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage('assets/images/img.png'),fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.09)
                  ]
                  )
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                        'Lifestyle sale',style: TextStyle(color: Colors.white,fontSize: 35),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                      ),
                      child: Center(
                        child: Text(
                          'Shop Now',style: TextStyle(color: Colors.grey.shade900),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
         Expanded(child: GridView.count(crossAxisCount: 2,
           crossAxisSpacing: 20,
           mainAxisSpacing: 10,
           children:
         _listItem.map((item) => cellofList(item)).toList(),

         )
         )

          ],
        ),


      ),
    );

  }    Widget cellofList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(item),
          fit: BoxFit.cover
          )
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          Icon(Icons.star_border,color: Colors.yellow,size: 35,)

          ],
        ),

      ),
    );
  }
}
