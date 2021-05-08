import 'package:bookshelf_app/views/book_details.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bookshelf_app/data/data.dart';
import 'package:bookshelf_app/models/book_model.dart';
import 'package:bookshelf_app/models/single_book_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bookshelf_app/resource/widgets.dart';

String slectedCategorie = "All";

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> categories = ["All", "Recommended", "Popular books", "My books"];

  List<BookModel> books = new List<BookModel>();
  List<SingleBookModel> singleeBooks = new List<SingleBookModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    books = getBooks();
    singleeBooks = getSingleBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Container(
          color: Color(0xffF2F5F9),
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            width: MediaQuery.of(context).size.width,
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
                        "Hi John,",
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
                Image.asset(
                  "assets/banner.png",
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    "Menu",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontFamily: 'NexaRegular',
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              color: Colors.white,
                              elevation: 30.0,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.grey.shade50, width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                  width: 350,
                                  height: 150,
                                  child:Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 5.0   ,
                                      ),
                                      SvgPicture.asset("assets/book_lover.svg",matchTextDirection: false,height: 90.0, width: 200,),
                                      SizedBox(
                                        height: 10.0   ,
                                      ),
                                      Text(
                                        'Leçons',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: 'NexaRegular',
                                            color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                    ],
                                  )
                              ),
                            )
                        ),
                      ),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                color: Colors.white,
                                elevation: 30.0,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.grey.shade50, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                    width: 350,
                                    height: 150,
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 5.0   ,
                                        ),
                                        SvgPicture.asset("assets/book_lover.svg",matchTextDirection: false,height: 90.0, width: 200,),
                                        SizedBox(
                                          height: 10.0   ,
                                        ),
                                        Text(
                                          'Matières',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontFamily: 'NexaRegular',
                                              color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                      ],
                                    )
                                ),
                              )
                          ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              color: Colors.white,
                              elevation: 30.0,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.grey.shade50, width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                  width: 350,
                                  height: 150,
                                  child:Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 5.0   ,
                                      ),
                                      SvgPicture.asset("assets/book_lover.svg",matchTextDirection: false,height: 90.0, width: 200,),
                                      SizedBox(
                                        height: 10.0   ,
                                      ),
                                      Text(
                                        'Anales',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: 'NexaRegular',
                                            color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                    ],
                                  )
                              ),
                            )
                        ),
                      ),
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              color: Colors.white,
                              elevation: 30.0,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.grey.shade50, width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                  width: 350,
                                  height: 150,
                                  child:Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 5.0   ,
                                      ),
                                      SvgPicture.asset("assets/book_lover.svg",matchTextDirection: false,height: 90.0, width: 200,),
                                      SizedBox(
                                        height: 10.0   ,
                                      ),
                                      Text(
                                        'Tests',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: 'NexaRegular',
                                            color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                    ],
                                  )
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
