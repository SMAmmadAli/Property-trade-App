import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:property_trade_app/Screen/splash_view.dart';

import '../Model/api_model.dart';

class MyListViewPage extends StatefulWidget {
  final String title;
  MyListViewPage({super.key, required this.title});

  @override
  State<MyListViewPage> createState() => _MyListViewPageState();
}

class _MyListViewPageState extends State<MyListViewPage> {
  List<APIModelClass> postList = [];

  Future<List<APIModelClass>> getPostApi() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        postList.add(APIModelClass.fromJson(i));
      }
      return postList;
    } else {
      return postList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Text(widget.title),
        leading: InkWell(
            onTap: (() => Navigator.pop(context)),
            child: Icon(CupertinoIcons.arrow_left)),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getPostApi(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.blue,
                        strokeWidth: 5.0,
                      ),
                    );
                  } else {
                    return ListView.builder(
                        itemCount: postList.length,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Card(
                              elevation: 2,
                              child: ListTile(
                                  leading: ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      minWidth: 100,
                                      minHeight: 260,
                                      maxWidth: 104,
                                      maxHeight: 264,
                                    ),
                                    child: Image.network(
                                        postList[index].thumbnailUrl.toString(),
                                        fit: BoxFit.cover),
                                  ),
                                  title: Text("Item No." +
                                      postList[index].id.toString()),
                                  subtitle: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(postList[index].title.toString()),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          SplashView()));
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      4, 1.5, 4, 1.5),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.green,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: const Text(
                                                "Email",
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          SplashView()));
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      4, 1.5, 4, 1.5),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.green,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: const Text(
                                                "CALL",
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.whatsapp,
                                                color: Colors.green,
                                              )),
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          );
                        }));
                  }
                }),
          )
        ],
      ),
    );
  }
}
