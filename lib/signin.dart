import 'package:flutter/material.dart';
import 'package:lab2/cards.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sign in"),
      ),
      body: Form(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter E-mail'
                ),
                
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password'
                ),
                autofocus: false,
                obscureText: true,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 120.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cards()),
                  );
                },child: Text('sign in'),
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("Need an account? Register", style:TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("Forgot Password? ", style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700),)),
            ),
            
            
          ],
        ),
         
        ) 
    );
  }
}