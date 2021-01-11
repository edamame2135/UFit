import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Image(
                  image: AssetImage( "assets/workout.jpg"),
                ),
              ),
              Text("Welcome to UFit!",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'OpenSans'
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              LoginField(),
            ]
          ),
        ],
      ),
    );
  }
}

class LoginField extends StatefulWidget {
  @override
  _LoginFieldState createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  bool _visibletag = false;
  final usercontroller = TextEditingController();
  final passcontroller = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    usercontroller.dispose();
    passcontroller.dispose();
    super.dispose();
  }

  void showInvalid() {
    setState(() {
      _visibletag = !_visibletag;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 350,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0
            ),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 15.0
            )
          ]
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Login',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'OpenSans'
                )
            ),
            SizedBox(
                height: 25
            ),
            Text('Username',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'OpenSans'
                )
            ),
            TextField(
              controller: usercontroller,
              decoration: InputDecoration(
                hintText: 'username',
              ),
            ),
            SizedBox(
                height: 10
            ),
            Text('Password',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'OpenSans'
                )
            ),
            TextField(
              controller: passcontroller,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'password'
              ),
            ),
            SizedBox(
                height: 55
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Visibility(
                  child: Text('Invalid Username/Password!',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'OpenSans',
                        color: Colors.redAccent,
                      )),
                  maintainState: true,
                  visible: _visibletag,
                ),
                SizedBox(
                  width: 30,
                ),
                RaisedButton(
                  onPressed: () {
                    String username = usercontroller.text;
                    String password = passcontroller.text;
                    if(username == 'user1' && password == 'pass1') {
                      if(_visibletag == true)
                        showInvalid();
                      Navigator.pushNamed(context, '/homescreen');
                    }
                    else {
                      if(_visibletag == false)
                        showInvalid();
                      print('nah?');
                    }
                  },
                  color: Colors.cyanAccent,
                  child: Text('Sign In'
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

