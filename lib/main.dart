import 'package:flutter/material.dart';
import 'package:flutter_application_uts/dasboard.dart';
import 'constant.dart';



void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("OTW LOGIN", style: textTextStyle.copyWith(fontSize: 50, fontWeight: bold),),
              SizedBox(height: 11),
              Text("Srill Project", style: secondaryTextStyle.copyWith(fontSize: 15),
              textAlign: TextAlign.center,
              ),
              SizedBox(height: 65,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Email", style: textTextStyle.copyWith(fontSize: 12, fontWeight: bold),),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "azaravina@gdriveme.id",
                        helperStyle: textTextStyle.copyWith(fontSize: 12, color: textColor.withOpacity(0.6)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                      ),
                    ),
                  ),                  
                ],
              ),
               SizedBox(height: 15,),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Password", style: textTextStyle.copyWith(fontSize: 12, fontWeight: bold),),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                    ),
                  ),                  
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Text("Remember me?", style: blackTextStyle.copyWith(fontSize: 12),)
                    ],
                  ),
                  Text("Forget Password ?", style: textTextStyle.copyWith(fontSize: 12, fontWeight: bold),),
                ],
              ),
              SizedBox(height: 32,),
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
                      builder: (context) => Dasboard(),
                    ));
                  }, 
                  child: Text("LOGIN", style: whiteTextStyle.copyWith(fontWeight: bold),),
                  ),
              ),
              
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 19),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: buttonColor
                  ),
                  onPressed: (){}, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network("https://static-00.iconduck.com/assets.00/google-icon-2048x2048-czn3g8x8.png", height: 20,),
                      SizedBox(width: 12,),
                      Text("SIGN IN WITH GOOGLE", style: textTextStyle.copyWith(fontWeight: bold),),
                    ],
                  ),
                  ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You don't have an account yet? ", style: secondaryTextStyle.copyWith(fontSize: 12),),
                  Text("Sign up", style: blackTextStyle.copyWith(fontSize: 12, fontWeight: bold),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
