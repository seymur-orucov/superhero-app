import 'package:flutter/material.dart';
import 'package:superhero_app/model/superhero.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HeroList extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HeroList> {
  var url = Uri.parse(
      'https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/all.json');

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
      body: FutureBuilder(
          future: getJson(),
          builder: (context, AsyncSnapshot<SuperHero> heroList) {
            if (heroList.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (heroList.connectionState == ConnectionState.done) {
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Text(heroList.data.name);
                  });
            }
          }),
    );
  }
}
