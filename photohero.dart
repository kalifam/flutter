import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/image_view.dart';

class PhotoHero extends StatelessWidget {
 // const   PhotoHero ({super.key});
  int index = 0;
  final Screen =[
    Center(child: Text('mail',style: TextStyle(fontSize: 72),),),
    Center(child: Text('chat',style: TextStyle(fontSize: 72),),),
    Center(child: Text('space',style: TextStyle(fontSize: 72),),),
    Center(child: Text('meet',style: TextStyle(fontSize: 72),),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar:BottomNavigationBar(
      items:const [
      BottomNavigationBarItem(icon: Icon( Icons.restaurant_outlined,color:Colors.blue),
      label: '.',backgroundColor: Color.fromARGB(216, 255, 255, 255),
       ), 
       BottomNavigationBarItem(icon: Icon( Icons.explore,color:Color.fromARGB(71, 0, 0,  0)),
      label: '',backgroundColor: Colors.blue,
       ), 
       BottomNavigationBarItem(icon: Icon( Icons.account_balance_wallet_rounded,color:Color.fromARGB(71, 0, 0, 0)),
      label: 'home',backgroundColor: Colors.blue,
       ), 
       BottomNavigationBarItem(icon: Icon( Icons.account_circle,color:Color.fromARGB(71, 0, 0,  0)),
      label: 'home',backgroundColor: Colors.white,
       ),   ],  ),
    //   bottomNavigationBar: NavigationBarTheme(
    //   data: NavigationBarThemeData(
    //     indicatorColor:Colors.white,
    //     labelTextStyle: MaterialStateProperty.all(
    //       TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
    //     ),
    //   ) ,

    //   child: NavigationBar(
    //     height: 60,backgroundColor: Colors.blue,
    //     labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
    //     selectedIndex: index,
    //     animationDuration: Duration(seconds: 2),
    //     onDestinationSelected: (index) =>
    //     setState(() =>this.index = index),
    //     destinations:const [
    //     NavigationDestination(
    //       icon:Icon(
    //         Icons.email_outlined),selectedIcon: Icon(Icons.email),
    //      label: 'mail',
    //      ),
    //      NavigationDestination(icon:Icon(Icons.email_outlined),
    //      selectedIcon: Icon(Icons.email),
    //      label: 'mail',),
    //      NavigationDestination(icon:Icon(Icons.email_outlined),
    //      label: 'mail',),
    //      NavigationDestination(icon:Icon(Icons.email_outlined),
    //      label: 'mail',),
    //   ]),
    // ),
      body: 
       SingleChildScrollView(
         child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Row(
            children:  [
              
                const SizedBox(height: 80,width: 20),
            Container(height: 45,decoration:  BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(15),),
              child: IconButton(onPressed:(){}, icon:  const Icon(Icons.location_on),)),
        Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text("Your location",style: TextStyle(color: Colors.grey),),
            ),
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: Text("Miami"),
            ),
          ],
        ),
       Padding(
         padding: const EdgeInsets.only(left:140),
       
         child:   Container(
          
          height: 45,decoration:  BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(15),),
           child: const CircleAvatar(radius: 20,backgroundImage:   NetworkImage(
            'https://i.pinimg.com/originals/d0/7a/f6/d07af684a67cd52d2f10acd6208db98f.jpg',),
            
           
           
           
                   )
                   )
                   ) 
                     ], 
                  ),
              ), 
              const Padding(
                padding: EdgeInsets.only(right: 150,top: 40),
                child: Text("Want to eat",style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold),),
              )  ,
                 const Padding(
                   padding: EdgeInsets.only(right: 80,top: 10),
                   child: Text("near the ocean? ",style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold),),
                 ) ,
                Padding(
               padding: const EdgeInsets.only(bottom: 0),
               child: Row(
                 children: [
                   Flexible(
                     child: Padding(
                       padding: const EdgeInsets.only(left: 15,top: 20),
                       child: Container(height: 55,width: 280,
                        decoration: BoxDecoration(color: Colors.grey[200],
                        border: Border.all(color:Colors.white),
                        borderRadius: BorderRadius.circular(25),
                        ),    
                        
                   child:
                        Row(
                          children: [
                             IconButton(icon: const Icon(Icons.search), onPressed: () {  },
                             ),     
                           
                       const Flexible(
                         child: Padding(
                           padding: EdgeInsets.only(top: 0),
                           child: TextField(
                            
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                
                                hintText: 'Search place',
                              ),
                             ),
                         ),
                       ),
                       
                          ],  ),  ),
                     ),
                   ),
                 Padding(
                       padding: const EdgeInsets.only(top: 15,left: 5),
                       child: (
                    Container(height: 50,decoration:  BoxDecoration(color: Colors.amber.shade300,borderRadius: BorderRadius.circular(15),),
                         child: IconButton(icon: const Icon(Icons.tune), onPressed: () { 
                         // Navigator.push(context, MaterialPageRoute(builder:(context)=>homescreen()));
                          }, ),
                         
                    )
                   ),
                     ),



                  ] ),
                  ),
                  Row(
  children: const [SizedBox(width: 25,height: 75,),
  
      Tab(child: Text("Restaurants",style: TextStyle(fontSize: 20),)),
        SizedBox(width: 15),
        Text("Pubs",style: TextStyle(fontSize: 20,color: Colors.grey),),
        SizedBox(width: 15),
        Text("Cafes",style: TextStyle(fontSize: 20,color: Colors.grey)),
  ],
),

CarouselSlider(
  items: [
    Container( 
      child: Card( 
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
child: InkWell(onTap: () => print("hi"),
child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
 GestureDetector(
  onTap: (){
    Navigator.push(context,
    MaterialPageRoute(builder: (context){return const ImageView();
    }));
  },
  child: 
   ClipRRect(
    borderRadius: const BorderRadius.only(topLeft: Radius.circular(7.0),
   topRight:  Radius.circular(8.0),
   ),
 
   child: Hero(
     tag:'image_view' ,
     child: InkWell(
    //  onTap: ()=>Navigator.of(context).push(Myroute(builder:(context)=>const ImageView() )),
       child: Image.network(
        "https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/2022-10/Restaurant.jpg",
      //"https://www.thebalancesmb.com/thmb/kectf9d4azgI8yVnBuoB0h2Z8zA=/3865x2174/smart/filters:no_upscale()/overhead-view-of-smiling-female-friends-sharing-lunch-in-restaurant-928010348-5b4abe8f46e0fb003712c478.jpg",
      //  "https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/2022-10/Restaurant.jpg",
        height: 135,
        fit: BoxFit.fill,
        ),
     ),
   ),
   ),
 ),
    ListTile(title: Text("NEMO"),
    subtitle: Text("500 Brickell Key Drive"),
    trailing: IconButton(
      icon: const Icon(Icons.star,color: Colors.amber,),
       onPressed: ()
       // { 
        // Navigator.push(
        //   context, MaterialPageRoute(
        //     builder:(context)=>ImageView(),
        //     )
        //     );
          
                       //   }, 
                       =>Navigator.push(context,
                        PageRouteBuilder(
                          transitionDuration: Duration(seconds: 10),
                        pageBuilder: (
                          context, animation, secondaryAnimation)
                           => ImageView())
                       
                       )
                       ),
                          
    ),
    
   




]
),
  )
  )
  ), 
  
  Container(
child: Card( 
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
child: InkWell(onTap: () => print("hi"),
child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
// GestureDetector(
 // onTap: (){
  //  Navigator.push(context,
  //  MaterialPageRoute(builder: (context){return const ImageView();
  //  }));
 // },
 // child: 
   ClipRRect(
    borderRadius: const BorderRadius.only(topLeft: Radius.circular(7.0),
   topRight:  Radius.circular(8.0),
   ),
 
  // child: Hero(
    // tag:'image_view' ,
     child: InkWell(
    //  onTap: ()=>Navigator.of(context).push(Myroute(builder:(context)=>const ImageView() )),
       child: Image.network(
        "https://img.freepik.com/free-psd/poster-frame-restaurant-mockup_1150-50085.jpg?w=2000",
        height: 135,
        fit: BoxFit.fill,
        ),
     ),
  // ),
   ),
// ),
    ListTile(title: Text("La Mar by Gaston Acurio"),
    subtitle: Text("500 Brickell Key Drive"),
    trailing: IconButton(
      icon: const Icon(Icons.star,color: Colors.amber,),
       onPressed: () { 
        // Navigator.push(
        //   context, MaterialPageRoute(
        //     builder:(context)=>ImageView(),
        //     )
        //     );
           // Navigator.push(context, MaterialPageRoute(builder:(context)=>Hero(tag:'star_tag', child: Text('')) ));
                          }, 
                          ),
    ),
    
   




]
),
  )
  )
  ),
   ], options: CarouselOptions(),
),

],
),
)
);




           
           
    
  }
  
  setState(int Function() param0) {}
}
class NavigationApp extends StatefulWidget {
  //const NavigationApp({super.key});
int index = 0;
  final Screen =[
    Center(child: Text('mail',style: TextStyle(fontSize: 72),),),
    Center(child: Text('chat',style: TextStyle(fontSize: 72),),),
    Center(child: Text('space',style: TextStyle(fontSize: 72),),),
    Center(child: Text('meet',style: TextStyle(fontSize: 72),),),
  ];
  @override
  State<NavigationApp> createState() => _NavigationAppState();
}

class _NavigationAppState extends State<NavigationApp> {
  var index=0;

  

  @override
  Widget build(BuildContext context) =>Scaffold(
    bottomNavigationBar: NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor:Colors.white,
        labelTextStyle: MaterialStateProperty.all(
          TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        ),
      ) ,

      child: NavigationBar(
        height: 60,backgroundColor: Colors.blue,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: index,
        animationDuration: Duration(seconds: 2),
        onDestinationSelected: (index) =>
        setState(() =>this.index = index),
        destinations:const [
        NavigationDestination(
          icon:Icon(
            Icons.email_outlined),selectedIcon: Icon(Icons.email),
         label: 'mail',
         ),
         NavigationDestination(icon:Icon(Icons.email_outlined),
         selectedIcon: Icon(Icons.email),
         label: 'mail',),
         NavigationDestination(icon:Icon(Icons.email_outlined),
         label: 'mail',),
         NavigationDestination(icon:Icon(Icons.email_outlined),
         label: 'mail',),
      ]),
    ),

  );
}