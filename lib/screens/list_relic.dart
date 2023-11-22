import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:relic_tracker/models/relic.dart';
import 'package:relic_tracker/screens/relic_detail.dart';
import 'package:relic_tracker/widgets/left_drawer.dart';

class RelicPage extends StatefulWidget {
  const RelicPage({Key? key}) : super(key: key);

  @override
  _RelicPageState createState() => _RelicPageState();
}

class _RelicPageState extends State<RelicPage> {
  Future<List<Relic>> fetchProduct() async {
    var url = Uri.parse(
        'http://catur-wira-tugas.pbp.cs.ui.ac.id/json/');
    var response = await http.get(
      url,
      headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Product
    List<Relic> list_relic = [];
    for (var d in data) {
      if (d != null) {
        list_relic.add(Relic.fromJson(d));
      }
    }
    return list_relic;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Relic'),
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchProduct(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return const Column(
                    children: [
                      Text(
                        "Tidak ada data relic.",
                        style:
                        TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${snapshot.data![index].fields.name}",
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text("${snapshot.data![index].fields.amount}"),
                            const SizedBox(height: 10),
                            Text(
                                "${snapshot.data![index].fields.description}"),
                            ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.indigo),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => RelicDetailPage("${snapshot.data![index].fields.name}",
                                      "${snapshot.data![index].fields.amount}","${snapshot.data![index].fields.description}",
                                      "${snapshot.data![index].fields.best_rarity}","${snapshot.data![index].fields.ideal_main_stat}",
                                      "${snapshot.data![index].fields.ideal_variant_amount}"
                                      ),
                                  ));
                                },
                              child: const Text(
                                "Detail",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ));
                }
              }
            }));
  }
}