import 'package:flutter/material.dart';
import 'package:superhero_app/model/superhero.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HeroList extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HeroList> {
  var url = Uri.parse('https://cdn.cinemood.club/superhero.json');

  SuperHero hero;

  Future<SuperHero> getJson() async {
    var response = await http.get(url);
    var decodedJson = json.decode(response.body);

    return hero = SuperHero.fromJson(decodedJson);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero list')),
      body: FutureBuilder<SuperHero>(
          future: getJson(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          snapshot.data.superhero[index].images.md),
                    );
                  });
            } else if (snapshot.hasError) {
              return Center(child: Text(snapshot.error));
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}
