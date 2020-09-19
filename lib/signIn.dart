import 'package:flutter/material.dart';
import 'package:splash_screen/login.dart';


class signIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<signIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                  ),
                ),
                Container(
                   margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                   margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: false,
                    controller: mailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                   margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: false,
                    controller: PhoneController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone Number',
                    ),
                  ),
                ),

                Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      onPressed: () { 
                        showDialog(
                          context: context, barrierDismissible: false, // user must tap button!

                          builder: (BuildContext context) {
                            return new AlertDialog(
                              title: new Text('Thank You'),
                              content: new SingleChildScrollView(
                                child: new ListBody(
                                  children: [
                                    new Text('Thanks for creating your Account. Login to Enjoy.'),
                                  ],
                                ),
                              ),
                              actions: [
                                new FlatButton(
                                  child: new Text('Ok'),
                                  onPressed: () {
                                   Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => LoginPage()),
                                      );
                                  },
                                ),
                              ],
                            );
                          },
                        );
                       },
                      child: Text('All Set'),
                    ),
                ),
          


                 ],
            )));
  }
}

