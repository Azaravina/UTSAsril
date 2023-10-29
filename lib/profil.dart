import 'package:flutter/material.dart';
import 'constant.dart';

void main() {
  runApp(const Profil());
}

class Profil extends StatelessWidget {
  const Profil({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.grey),
        home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text("Profil"),
          ),
          body: Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage('images/me.png'), 
            ),
                  Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("NPM : ASRIL ZAIDAAN MAHRUZA", style: textTextStyle.copyWith(fontSize: 20, fontWeight: bold),),
                  SizedBox(height: 10,),
                  Text("NPM  : 20670004", style: textTextStyle.copyWith(fontSize: 20, fontWeight: bold),),
                  SizedBox(height: 10,),
                  Text("Mata Kuliah : Advand Mobile Programming", style: textTextStyle.copyWith(fontSize: 20, fontWeight: bold),),
                  SizedBox(height: 10,),
                ],
              ),
              ],
                  ),
                  SizedBox(height: 35,),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 20,),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: blackColor
                      ),
                      onPressed: (){
                        Navigator.pop(
                        context,
                        );
                      }, 
                      child: Text("BEGIN", style: whiteTextStyle.copyWith(fontWeight: bold),),
                      ),
                  ),
                ],
              )),
            ),
          ),
        ));
  }
}
