import 'package:flutter/material.dart';
import 'constant.dart';
import 'profil.dart';
import 'main.dart';

void main() => runApp(Dasboard());

class Dasboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> images = [
    'images/snowman.png',
    'images/spring.png',
    'images/summer.png',
    'images/tree.png',
  ];

  final List<String> descriptions = [
    'Winter (Musim Dingin/Salju)',
    'Spring (Musim Semi)',
    'Summer (Musim Panas)',
    'Fall (Musim Gugur)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.grey.withOpacity(0.5),
                  child: Image.asset(images[index]),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: descriptions.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    tileColor: Colors.grey.withOpacity(0.5),
                    leading: Icon(Icons.description),
                    title: Text(descriptions[index]),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20,),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: primaryButtonColor
                  ),
                  onPressed: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
                  }, 
                  child: Text("BEGIN", style: whiteTextStyle.copyWith(fontWeight: bold),),
                  ),
              ),
              SizedBox(height: 15,),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20,),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: blackColor
                  ),
                  onPressed: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profil(),
                    ));
                  }, 
                  child: Text("PROFIL", style: whiteTextStyle.copyWith(fontWeight: bold),),
                  ),
              ),
                  SizedBox(height: 50,),
        ],
        
      ),
    );
  }
}