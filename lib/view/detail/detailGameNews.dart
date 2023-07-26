import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:restart_app/restart_app.dart';
import '../../constant/constant.dart';
import '../../model/GameNews.dart';
import '../../model/User.dart';

import '../../viewmodel/gamenews_service.dart';
import '../profile/profile.dart';

class DetailGameNews extends StatefulWidget {
  final GameNewsModel gamenews;
  int user;

  DetailGameNews({Key? key, required this.gamenews, required this.user})
      : super(key: key);

  @override
  State<DetailGameNews> createState() => _DetailGameNewsState();
}

class _DetailGameNewsState extends State<DetailGameNews> {
  Dio dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 0, 0),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16),
              child: Stack(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text("${widget.gamenews.gamenews_name}",
                            style: Theme.of(context).textTheme.headline6),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${widget.gamenews.short_description}",
                        style:
                            TextStyle(color: Color.fromARGB(255, 49, 49, 49)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Author : ${widget.gamenews.author_name}",
                        style:
                            TextStyle(color: Color.fromARGB(255, 49, 49, 49)),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 365,
                        height: 470,
                        child: Image.network(
                          widget.gamenews.cover,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                "${widget.gamenews.description}",
                style: Theme.of(context).textTheme.bodyText1,
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        )));
  }
}

      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.white,
      //   child: Icon(Icons.favorite, color: favIconcolor),
      //   onPressed: () {
      //     setState(() {
      //       if (favIconcolor == Colors.grey) {
      //         favIconcolor = Colors.red.shade700;
      //       } else {
      //         favIconcolor = Colors.grey;
      //       }
      //     });
      //   },
      // ),

