

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// class imageview extends StatefulWidget {
//   const imageview({super.key});

//   @override
//   State<imageview> createState() => _imageviewState();
// }

// class _imageviewState extends State<imageview> {
//   @override
//   Widget build(BuildContext context) {
  class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
             
           Positioned(left: 0,right: 0,
           
             child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
               child: Container(
                width: double.maxFinite,
                height: 300,
                         //   decoration:  BoxDecoration(
                         //  image:  DecorationImage(image: NetworkImage(
                         //   "https://images.pexels.com/photos/941861/pexels-photo-941861.jpeg?cs=srgb&dl=pexels-chan-walrus-941861.jpg&fm=jpg"),fit: BoxFit.cover,
                         //  ),
                         //  )
                         child: Hero(
                tag: 'image_view',
                child: Image.network(
                    "https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/2022-10/Restaurant.jpg",
                    height: 135,
                    fit: BoxFit.fill,
                    ),
                         ),
               ),
             ),
           
           ) ,
            Positioned(top: 70,left: 20,
                child: Row(children: [
                Container(height: 45,decoration:  BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(15),),
                
            child: IconButton(onPressed: (){},
             icon: Icon(Icons.arrow_back,color: Colors.black,))),
              ],)),
           Positioned(top: 280,child: Container(width: MediaQuery.of(context).size.width,
           height: 500,
           decoration: const BoxDecoration(color:Colors.white,
           borderRadius: BorderRadius.only(topLeft: Radius.circular(29),
           topRight: Radius.circular(28),)
           
            ),
           
          child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 230, top: 20),
                        child: Text(
                          "Nemo",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 20,
                        ),
                        child: Row(children: const [
                          Icon(
                            Icons.food_bank_sharp,
                            color: Colors.blue,
                          ),
                          Text(
                            "Restaurant",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.circle,
                            size: 10,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.location_on,
                            color: Colors.blue,
                          ),
                          Text("2.1km"),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.circle,
                            size: 10,color: Colors.black,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "\$\$\$",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          )
                        ]),
                      ),
                      SizedBox(height: 30),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Nemo is the venue for those looking for a destination that reflects their style,stimulates their desires and delights their tastes",
                          style: TextStyle(fontSize: 20,color:Colors.black),
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: const [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Dinner",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 170),
                            child: Icon(
                              Icons.timer,
                              color: Colors.blue,
                            ),
                          ),
                          Text("15-20 min")
                        ],
                      ),
                    
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                     
                      child: Container(
                        height: 60,
                        width: 70,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: NetworkImage(
               "https://247wallst.com/wp-content/uploads/2019/09/chicken.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Steak of Salmon",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Text("\$21.99"),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.add_box_rounded,
                      color: Colors.yellow,
                      size: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                     
                      child: Container(
                        height: 60,
                        width: 70,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: NetworkImage(
               "https://image.shutterstock.com/image-photo/close-braised-beef-short-rib-260nw-530248354.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Fish set",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Text("\$6.99"),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.add_box_rounded,
                      color: Colors.yellow,
                      size: 40,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 30),
                    //   child: Container(
                    //     height: 60,
                    //     width: 80,
                    //     decoration: BoxDecoration(
                    //       image: const DecorationImage(
                    //           image: NetworkImage(
                    //               "https://media-cdn.tripadvisor.com/media/photo-s/08/b2/8b/66/hotel-empire-restaurant.jpg"),
                    //           fit: BoxFit.cover),
                    //       color: Colors.white38,
                    //       borderRadius: BorderRadius.circular(9),
                    //     ),
                    //   ),
                    // ),
                    
                    Row(
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                     
                      child: Container(
                        height: 60,
                        width: 70,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: NetworkImage(
               "https://247wallst.com/wp-content/uploads/2019/09/chicken.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Steak of Salmon",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Text("\$21.99"),
                        ),
                      ],
                    ),
                     ] ),
                    
                    Icon(
                      Icons.add_box_rounded,
                      color: Colors.yellow,
                      size: 40,
                    ),
           ]
            ),
           
                  ),
                  
                  const SizedBox(height: 20,),
                  Row(children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 80, top: 25),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(left: 30, bottom: 20),
                          child: Icon(
                            Icons.favorite,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                    
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 20,top: 28
                            ),
                            child: Container(
                              height: 50,
                              width: 220,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black,
                                  shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: const BorderSide(color: Colors.blue),
      ),
                                ),
                                onPressed: () {  },
                                child: const Center(
                                  child: Text(
                                    "Book Now",
                                    style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                  ),
                                ),
                              ),
                             ),
                           ),
                         ],
           ),
                    )
           ]
           )
          // ]
          //  ),
          //       )
             ]
              )
           )
            )  
            ]
           )
           ),
           )
         );
  } 
  }

  //   return Scaffold(
  //     body: Align(
  //       alignment: Alignment.bottomCenter,
  //       child: Container(
  //         width: double.maxFinite,
  //         height: double.maxFinite,
  //         child: Stack(
  //           children: [
             
  //          Positioned(left: 0,right: 0,
           
  //            child: GestureDetector(
  //             onTap: (){
  //               Navigator.pop(context);
  //             },
  //              child: Container(
  //               width: double.maxFinite,
  //               height: 300,
  //                        //   decoration:  BoxDecoration(
  //                        //  image:  DecorationImage(image: NetworkImage(
  //                        //   "https://images.pexels.com/photos/941861/pexels-photo-941861.jpeg?cs=srgb&dl=pexels-chan-walrus-941861.jpg&fm=jpg"),fit: BoxFit.cover,
  //                        //  ),
  //                        //  )
  //                        child: Hero(
  //               tag: 'image_view',
  //               child: Image.network(
  //                   "https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/2022-10/Restaurant.jpg",
  //                   height: 135,
  //                   fit: BoxFit.fill,
  //                   ),
  //                        ),
  //              ),
  //            ),
           
  //          ) ,
  //           Positioned(top: 70,left: 20,
  //               child: Row(children: [
  //               Container(height: 45,decoration:  BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(15),),
                
  //           child: IconButton(onPressed: (){},
  //            icon: Icon(Icons.arrow_back,color: Colors.black,))),
  //             ],)),
  //          Positioned(top: 280,child: Container(width: MediaQuery.of(context).size.width,
  //          height: 500,
  //          decoration: const BoxDecoration(color:Colors.white,
  //          borderRadius: BorderRadius.only(topLeft: Radius.circular(29),
  //          topRight: Radius.circular(28),)
           
  //           ),
           
  //         child: Column(children: [
  //                     Padding(
  //                       padding: const EdgeInsets.only(right: 230, top: 20),
  //                       child: Text(
  //                         "Nemo",
  //                         style: TextStyle(
  //                             fontSize: 30, fontWeight: FontWeight.bold),
  //                       ),
  //                     ),
  //                     Padding(
  //                       padding: const EdgeInsets.only(
  //                         top: 5,
  //                         left: 20,
  //                       ),
  //                       child: Row(children: const [
  //                         Icon(
  //                           Icons.food_bank_sharp,
  //                           color: Colors.blue,
  //                         ),
  //                         Text(
  //                           "Restaurant",
  //                           style: TextStyle(
  //                             fontSize: 12,
  //                           ),
  //                         ),
  //                         SizedBox(
  //                           width: 10,
  //                         ),
  //                         Icon(
  //                           Icons.circle,
  //                           size: 10,
  //                         ),
  //                         SizedBox(
  //                           width: 15,
  //                         ),
  //                         Icon(
  //                           Icons.location_on,
  //                           color: Colors.blue,
  //                         ),
  //                         Text("2.1km"),
  //                         SizedBox(
  //                           width: 10,
  //                         ),
  //                         Icon(
  //                           Icons.circle,
  //                           size: 10,color: Colors.black,
  //                         ),
  //                         SizedBox(
  //                           width: 15,
  //                         ),
  //                         Text(
  //                           "\$\$\$",
  //                           style: TextStyle(
  //                             color: Colors.blue,
  //                           ),
  //                         )
  //                       ]),
  //                     ),
  //                     SizedBox(height: 30),
  //                     const Padding(
  //                       padding: EdgeInsets.only(left: 20),
  //                       child: Text(
  //                         "Nemo is the venue for those looking for a destination that reflects their style,stimulates their desires and delights their tastes",
  //                         style: TextStyle(fontSize: 20,color:Colors.black),
  //                       ),
  //                     ),
  //                     SizedBox(height: 30),
  //                     Row(
  //                       children: const [
  //                         Padding(
  //                           padding: const EdgeInsets.only(left: 20),
  //                           child: Text("Dinner",
  //                               style: TextStyle(
  //                                   fontSize: 20, fontWeight: FontWeight.bold)),
  //                         ),
  //                         Padding(
  //                           padding: const EdgeInsets.only(left: 170),
  //                           child: Icon(
  //                             Icons.timer,
  //                             color: Colors.blue,
  //                           ),
  //                         ),
  //                         Text("15-20 min")
  //                       ],
  //                     ),
                    
  //               SizedBox(height: 20),
  //               SingleChildScrollView(
  //                 scrollDirection: Axis.horizontal,
  //                 child: Row(
  //                   children: [
  //                   Padding(
  //                     padding: const EdgeInsets.only(left: 30),
                     
  //                     child: Container(
  //                       height: 60,
  //                       width: 70,
  //                       decoration: BoxDecoration(
  //                         image: const DecorationImage(
  //                             image: NetworkImage(
  //              "https://247wallst.com/wp-content/uploads/2019/09/chicken.jpg"),
  //                             fit: BoxFit.cover),
  //                         color: Colors.white38,
  //                         borderRadius: BorderRadius.circular(15),
  //                       ),
  //                     ),
  //                   ),
  //                   Column(
  //                     children: const [
  //                       Padding(
  //                         padding: EdgeInsets.all(8.0),
  //                         child: Text(
  //                           "Steak of Salmon",
  //                           style: TextStyle(fontWeight: FontWeight.bold),
  //                         ),
  //                       ),
  //                       Padding(
  //                         padding: EdgeInsets.only(right: 40),
  //                         child: Text("\$21.99"),
  //                       ),
  //                     ],
  //                   ),
  //                   Icon(
  //                     Icons.add_box_rounded,
  //                     color: Colors.yellow,
  //                     size: 40,
  //                   ),
  //                   Padding(
  //                     padding: const EdgeInsets.only(left: 30),
                     
  //                     child: Container(
  //                       height: 60,
  //                       width: 70,
  //                       decoration: BoxDecoration(
  //                         image: const DecorationImage(
  //                             image: NetworkImage(
  //              "https://image.shutterstock.com/image-photo/close-braised-beef-short-rib-260nw-530248354.jpg"),
  //                             fit: BoxFit.cover),
  //                         color: Colors.white38,
  //                         borderRadius: BorderRadius.circular(15),
  //                       ),
  //                     ),
  //                   ),
  //                   Column(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: const [
  //                       Padding(
  //                         padding: EdgeInsets.all(8.0),
  //                         child: Text(
  //                           "Fish set",
  //                           style: TextStyle(fontWeight: FontWeight.bold),
  //                         ),
  //                       ),
  //                       Padding(
  //                         padding: EdgeInsets.only(right: 40),
  //                         child: Text("\$6.99"),
  //                       ),
  //                     ],
  //                   ),
  //                   Icon(
  //                     Icons.add_box_rounded,
  //                     color: Colors.yellow,
  //                     size: 40,
  //                   ),
  //                   // Padding(
  //                   //   padding: const EdgeInsets.only(left: 30),
  //                   //   child: Container(
  //                   //     height: 60,
  //                   //     width: 80,
  //                   //     decoration: BoxDecoration(
  //                   //       image: const DecorationImage(
  //                   //           image: NetworkImage(
  //                   //               "https://media-cdn.tripadvisor.com/media/photo-s/08/b2/8b/66/hotel-empire-restaurant.jpg"),
  //                   //           fit: BoxFit.cover),
  //                   //       color: Colors.white38,
  //                   //       borderRadius: BorderRadius.circular(9),
  //                   //     ),
  //                   //   ),
  //                   // ),
                    
  //                   Row(
  //                   children: [
  //                   Padding(
  //                     padding: const EdgeInsets.only(left: 30),
                     
  //                     child: Container(
  //                       height: 60,
  //                       width: 70,
  //                       decoration: BoxDecoration(
  //                         image: const DecorationImage(
  //                             image: NetworkImage(
  //              "https://247wallst.com/wp-content/uploads/2019/09/chicken.jpg"),
  //                             fit: BoxFit.cover),
  //                         color: Colors.white38,
  //                         borderRadius: BorderRadius.circular(15),
  //                       ),
  //                     ),
  //                   ),
  //                   Column(
  //                     children: const [
  //                       Padding(
  //                         padding: EdgeInsets.all(8.0),
  //                         child: Text(
  //                           "Steak of Salmon",
  //                           style: TextStyle(fontWeight: FontWeight.bold),
  //                         ),
  //                       ),
  //                       Padding(
  //                         padding: EdgeInsets.only(right: 40),
  //                         child: Text("\$21.99"),
  //                       ),
  //                     ],
  //                   ),
  //                    ] ),
                    
  //                   Icon(
  //                     Icons.add_box_rounded,
  //                     color: Colors.yellow,
  //                     size: 40,
  //                   ),
  //          ]
  //           ),
           
  //                 ),
                  
  //                 const SizedBox(height: 20,),
  //                 Row(children: [
  //                   const Padding(
  //                     padding: EdgeInsets.only(right: 80, top: 25),
  //                     child: CircleAvatar(
  //                       backgroundColor: Colors.white,
  //                       child: Padding(
  //                         padding: EdgeInsets.only(left: 30, bottom: 20),
  //                         child: Icon(
  //                           Icons.favorite,
  //                           size: 35,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
                    
  //                   Container(
  //                     child: Row(
  //                       children: [
  //                         Padding(
  //                           padding: const EdgeInsets.only(
  //                             right: 20,top: 28
  //                           ),
  //                           child: Container(
  //                             height: 50,
  //                             width: 220,
  //                             decoration: BoxDecoration(
  //                               color: Colors.black,
  //                               borderRadius: BorderRadius.circular(20),
  //                             ),
  //                             child: ElevatedButton(
  //                               style: ElevatedButton.styleFrom(
  //                                 primary: Colors.black,
  //                                 shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(18.0),
  //       side: const BorderSide(color: Colors.blue),
  //     ),
  //                               ),
  //                               onPressed: () {  },
  //                               child: const Center(
  //                                 child: Text(
  //                                   "Book Now",
  //                                   style: TextStyle(
  //                                     fontSize: 25, color: Colors.white),
  //                                 ),
  //                               ),
  //                             ),
  //                            ),
  //                          ),
  //                        ],
  //          ),
  //                   )
  //          ]
  //          )
  //         // ]
  //         //  ),
  //         //       )
  //            ]
  //             )
  //          )
  //           )  
  //           ]
  //          )
  //          ),
  //          )
  //        );
  // } 
  // }