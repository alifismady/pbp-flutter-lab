import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/data.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/page/detailWatch.dart';
import 'package:counter_7/page/myWatchListPage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/modelMyWatchList.dart';

class DetailPage extends StatelessWidget {
    const DetailPage({super.key, required this.data});
    final MyWatchList data;

    
@override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Detail'),
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
            
          
          body: Container(
            child: Column(
              children: [
                Center(
                  child: Text(
                    data.fields.filmsTitle,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36)
                  )
                ),
                Row(
                  children: [
                    Text(
                      'Release Date: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(data.fields.filmsReleaseDate),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Rating: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(data.fields.filmsRating.toString() + "/5"),

                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Status: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(data.fields.filmsWatched),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Review: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(data.fields.filmsReview),
                  ],
                ),
                TextButton(
                      child: const Text(
                        "Back",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyWatchListPage()),
                        );
                        
                      },
                    ),
              ],)
          ),
        );
    }
}

