import 'package:bookshelf_app/DynamicLinkService.dart';
import 'package:bookshelf_app/views/home.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class LeconsPage extends StatefulWidget{
  @override
  _MyLeconsPageState createState() => _MyLeconsPageState();
}

class _MyLeconsPageState extends State<LeconsPage> {
  Color _startColor=Colors.purple;
  Color _endColor=Colors.purple.shade100;
  //FirebaseApp.initializeApp(Context);

  final DynamicLinkService _dynamicLinkService = DynamicLinkService();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SingleChildScrollView(
       child: Container(
         color: Color(0xffF2F5F9),
         padding: EdgeInsets.symmetric(horizontal: 16),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             SizedBox(
               height: 70,
             ),
             Container(
               padding: EdgeInsets.symmetric(horizontal: 12),
               child: Row(
                 children: <Widget>[
                   Text(
                     "KPOTI Kpogara,",
                     style:
                     TextStyle(
                         fontWeight: FontWeight.w500,
                         fontFamily: 'NexaRegular',
                         fontSize: 24),
                   ),
                   Spacer(),
                   Image.asset(
                     "assets/search.png",
                   ),
                   SizedBox(
                     width: 14,
                   ),
                   Image.asset(
                     "assets/notification.png",
                     width: 28,
                   )
                 ],
               ),
             ),
             SizedBox(
               height: 16,
             ),
             Container(
                 child:Stack(
                   children: <Widget>[
                     Container(
                       height:65,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(24),
                         gradient: LinearGradient(
                             colors: [_startColor, _endColor],
                             begin: Alignment.topLeft,
                             end:Alignment.bottomRight
                         ),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.black54,
                             blurRadius: 12.0,
                             offset: Offset(0,3),
                           ),
                         ],
                       ),
                     ),
                     Positioned(
                       right: 0,
                       bottom: 0,
                       top: 0,
                       child:CustomPaint(
                         size: Size(45,65),
                         painter: CustomCardShapePainter(24, _startColor, _endColor),
                       ),
                     ),
                     Positioned(
                         left:30.0,
                         top:25.0,
                         right:5.0,
                         child:Container(
                           width: 80.0,
                           child: Text(
                             'Leçons',
                             style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.normal,
                                 fontFamily: 'NexaRegular',
                                 fontSize: 18
                             ),
                           ),
                         )
                     )
                   ],
                 )
             ),
             SizedBox(
               height: 35,
             ),
             Container(
               padding: EdgeInsets.symmetric(horizontal: 12),
               child: Text(
                 "Liste",
                 style: TextStyle(
                     color: Colors.black87,
                     fontSize: 16,
                     fontFamily: 'NexaRegular',
                     fontWeight: FontWeight.w500),
               ),
             ),
             Card(
               color: Colors.white,
               elevation: 30.0,
               shape: RoundedRectangleBorder(
                 side: BorderSide(color: Colors.grey.shade50, width: 1),
                 borderRadius: BorderRadius.circular(10),
               ),

               child: FutureBuilder<Uri>(
                   future: _dynamicLinkService.createDynamicLink(),
                   builder: (context, snapshot) {
                     if(snapshot.hasData) {
                       Uri uri = snapshot.data;
                       return FlatButton(
                         color: Colors.amber,
                         onPressed: () => Share.share(uri.toString()),
                         child: Text('Share'),
                       );
                     } else {
                       print("no sata");
                       print(snapshot);
                       print('aaaaaa');
                       return Container();
                     }
                   }
               ),
             ),
             SizedBox(
               height: 16,
             ),
             Card(
               color: Colors.white,
               elevation: 30.0,
               shape: RoundedRectangleBorder(
                 side: BorderSide(color: Colors.grey.shade50, width: 1),
                 borderRadius: BorderRadius.circular(10),
               ),

               child: InkWell(
                 onTap: (){
                   print("Yeaa");
                 },
                 child: Container(
                     height: 40,
                     child:Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text(
                         'Histoire',
                         style: TextStyle(
                             fontSize: 20.0,
                             fontFamily: 'NexaRegular',
                             color: Colors.grey),
                       ),
                     ),
                 ),
               ),

             ),
             SizedBox(
               height: 16,
             ),
             Card(
               color: Colors.white,
               elevation: 30.0,
               shape: RoundedRectangleBorder(
                 side: BorderSide(color: Colors.grey.shade50, width: 1),
                 borderRadius: BorderRadius.circular(10),
               ),
               child: InkWell(
                 onTap: (){
                   print("Yeaa");
                 },
                 child: Container(
                   height: 40,
                   child:Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(
                       'Géographie',
                       style: TextStyle(
                           fontSize: 20.0,
                           fontFamily: 'NexaRegular',
                           color: Colors.grey),
                     ),
                   ),
                 ),
               ),

             ),
             SizedBox(
               height: 16,
             ),
             Card(
               color: Colors.white,
               elevation: 30.0,
               shape: RoundedRectangleBorder(
                 side: BorderSide(color: Colors.grey.shade50, width: 1),
                 borderRadius: BorderRadius.circular(10),
               ),
               child: InkWell(
                 onTap: (){
                   print("Yeaa");
                 },
                 child: Container(
                   height: 40,
                   child:Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(
                       'S. V. T.',
                       style: TextStyle(
                           fontSize: 20.0,
                           fontFamily: 'NexaRegular',
                           color: Colors.grey),
                     ),
                   ),
                 ),
               ),

             ),
             SizedBox(
               height: 16,
             ),
             Card(
               color: Colors.white,
               elevation: 30.0,
               shape: RoundedRectangleBorder(
                 side: BorderSide(color: Colors.grey.shade50, width: 1),
                 borderRadius: BorderRadius.circular(10),
               ),
               child: InkWell(
                 onTap: (){
                   print("Yeaa");
                 },
                 child: Container(
                   height: 40,
                   child:Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(
                       'Philosophie',
                       style: TextStyle(
                           fontSize: 20.0,
                           fontFamily: 'NexaRegular',
                           color: Colors.grey),
                     ),
                   ),
                 ),
               ),

             ),
             SizedBox(
               height: 16,
             ),
             Card(
               color: Colors.white,
               elevation: 30.0,
               shape: RoundedRectangleBorder(
                 side: BorderSide(color: Colors.grey.shade50, width: 1),
                 borderRadius: BorderRadius.circular(10),
               ),
               child: InkWell(
                 onTap: (){
                   print("Yeaa");
                 },
                 child: Container(
                   height: 40,
                   child:Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(
                       'E. C. M.',
                       style: TextStyle(
                           fontSize: 20.0,
                           fontFamily: 'NexaRegular',
                           color: Colors.grey),
                     ),
                   ),
                 ),
               ),

             ),
             SizedBox(
               height: 16,
             ),
             Card(
               color: Colors.white,
               elevation: 30.0,
               shape: RoundedRectangleBorder(
                 side: BorderSide(color: Colors.grey.shade50, width: 1),
                 borderRadius: BorderRadius.circular(10),
               ),
               child: InkWell(
                 onTap: (){
                   print("Yeaa");
                 },
                 child: Container(
                   height: 40,
                   child:Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(
                       'Français',
                       style: TextStyle(
                           fontSize: 20.0,
                           fontFamily: 'NexaRegular',
                           color: Colors.grey),
                     ),
                   ),
                 ),
               ),

             ),
             SizedBox(
               height: 16,
             ),
             Card(
               color: Colors.white,
               elevation: 30.0,
               shape: RoundedRectangleBorder(
                 side: BorderSide(color: Colors.grey.shade50, width: 1),
                 borderRadius: BorderRadius.circular(10),
               ),
               child: InkWell(
                 onTap: (){
                   print("Yeaa");
                 },
                 child: Container(
                   height: 40,
                   child:Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(
                       'Musique',
                       style: TextStyle(
                           fontSize: 20.0,
                           fontFamily: 'NexaRegular',
                           color: Colors.grey),
                     ),
                   ),
                 ),
               ),

             ),
             SizedBox(
               height: 16,
             ),
             Card(
               color: Colors.white,
               elevation: 30.0,
               shape: RoundedRectangleBorder(
                 side: BorderSide(color: Colors.grey.shade50, width: 1),
                 borderRadius: BorderRadius.circular(10),
               ),
               child: InkWell(
                 onTap: (){
                   print("Yeaa");
                 },
                 child: Container(
                   height: 40,
                   child:Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(
                       'Physiques',
                       style: TextStyle(
                           fontSize: 20.0,
                           fontFamily: 'NexaRegular',
                           color: Colors.grey),
                     ),
                   ),
                 ),
               ),

             ),

           ],
         ),
       ),
     ),
   );
  }

}


