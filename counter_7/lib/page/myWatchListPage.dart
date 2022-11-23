import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/data.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/page/detailWatch.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/modelMyWatchList.dart';

class MyWatchListPage extends StatefulWidget {
    const MyWatchListPage({Key? key}) : super(key: key);

    @override
    _MyWatchListPageState createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
    Future<List<MyWatchList>> fetchToDo() async {
        var url = Uri.parse('https://tugas-2-pbp-muhammadalifismady.herokuapp.com/mywatchlist/json/');
        var response = await http.get(
        url,
        headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
        },
        );

        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        // melakukan konversi data json menjadi object ToDo
        List<MyWatchList> listWatchList = [];
        for (var d in data) {
        if (d != null) {
            listWatchList.add(MyWatchList.fromJson(d));
        }
        }

        return listWatchList;
    }
    @override
      Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
            appBar: AppBar(
                title: const Text('Watch List'),
            ),
            drawer: Drawer(
                child: Column(
                children: [
                    // Menambahkan clickable menu
                ListTile(
                  title: const Text('counter_7'),
                  onTap: () {
                    // Route menu ke halaman utama
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MyHomePage()),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Tambah Budget'),
                  onTap: () {
                    // Route menu ke halaman form
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MyFormPage()),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Data Budget'),
                  onTap: () {
                    // Route menu ke halaman form
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MyDataPage()),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Watch List'),
                  onTap: () {
                      // Route menu ke halaman to do
                      Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                      );
                  },
              ),
                ],
                ),
            ),
            body: FutureBuilder(
                future: fetchToDo(),
                builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                    } else {
                    if (!snapshot.hasData) {
                        return Column(
                        children: const [
                            Text(
                            "Tidak ada watch list :(",
                            style: TextStyle(
                                color: Color(0xff59A5D8),
                                fontSize: 20),
                            ),
                            SizedBox(height: 8),
                        ],
                        );
                    } else {
                        return ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (_, index)=> Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                color:Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: const [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 2.0
                                )
                                ]
                            ),
                            child: new InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => DetailPage(
                                                  data: snapshot.data![index])));
                                    },
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text(
                                    "${snapshot.data![index].fields.filmsTitle}",
                                    style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    ),
                                ),
                                const SizedBox(height: 10),
                                Text("${snapshot.data![index].fields.filmsWatched}"),
                                ],
                                
                            ),
                            )
                        ),
                                );
                        
                    }
                    }
                }
            )
        );
      }
    
}