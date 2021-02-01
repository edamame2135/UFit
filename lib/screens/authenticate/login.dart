import 'package:flutter/material.dart';
import 'package:pretty/services/auth.dart';
import 'package:pretty/shared/loading.dart';

class LoginScreen extends StatefulWidget {
  final Function toggleView;
  LoginScreen({this.toggleView});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  bool _visibletag = false;

  //text field state
  String email = '';
  String password = '';
  String error = '';
  // background of login screen
  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
          title: Text('UFit Login'),
          backgroundColor: Colors.pink,
          actions: <Widget>[
            FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text('Sign Up'),
                onPressed: () async {
                  widget.toggleView();
                })
          ]),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Image(
                image: AssetImage("assets/workout.jpg"),
              ),
            ),
            Text(
              "Welcome to UFit!",
              style: TextStyle(fontSize: 20.0, fontFamily: 'OpenSans'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 15.0),
                        blurRadius: 15.0),
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, -10.0),
                        blurRadius: 15.0)
                  ]),
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 50.0),
                      TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                          ),
                          validator: (val) =>
                              val.isEmpty ? 'Enter an email' : null,
                          onChanged: (val) {
                            setState(() => email = val);
                          }),
                      SizedBox(height: 20.0),
                      TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                          ),
                          obscureText: true,
                          validator: (val) =>
                              val.isEmpty ? 'Enter a password' : null,
                          onChanged: (val) {
                            setState(() => password = val);
                          }),
                      SizedBox(height: 55),
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
                          //sign in buttons
                          RaisedButton(
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                setState(() => loading = true);
                                //return if valid user created and null otherwise
                                dynamic result =
                                    await _auth.signInWithEmailAndPassword(
                                        email, password);
                                //user catches auth registration
                                if (result == null) {
                                  setState(() {
                                    loading = false;
                                    error =
                                        'could not sign in with credentials';
                                  });
                                }
                              }
                            },
                            color: Colors.cyanAccent,
                            child: Text('Sign In'),
                          ),
                          RaisedButton(
                            onPressed: () async {
                              dynamic result = await _auth.signInAnon();
                              if (result == null) {
                                print('error signing in');
                              } else {
                                print('signed in');
                                print(result.uid);
                              }
                            },
                            color: Colors.red,
                            child: Text('Sign in anon'),
                          )
                        ],
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        error,
                        style: TextStyle(color: Colors.red, fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
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
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  bool _visibletag = false;

  //text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0.0, 15.0),
                      blurRadius: 15.0),
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0.0, -10.0),
                      blurRadius: 15.0)
                ]),
            child: Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 50.0),
                    TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                        ),
                        validator: (val) =>
                            val.isEmpty ? 'Enter an email' : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        }),
                    SizedBox(height: 20.0),
                    TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                        obscureText: true,
                        validator: (val) =>
                            val.isEmpty ? 'Enter a password' : null,
                        onChanged: (val) {
                          setState(() => password = val);
                        }),
                    SizedBox(height: 55),
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
                        //sign in buttons
                        RaisedButton(
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              setState(() => loading = true);
                              //return if valid user created and null otherwise
                              dynamic result = await _auth
                                  .signInWithEmailAndPassword(email, password);
                              //user catches auth registration
                              if (result == null) {
                                setState(() {
                                  loading = false;
                                  error = 'could not sign in with credentials';
                                });
                              }
                            }
                          },
                          color: Colors.cyanAccent,
                          child: Text('Sign In'),
                        ),
                        RaisedButton(
                          onPressed: () async {
                            dynamic result = await _auth.signInAnon();
                            if (result == null) {
                              print('error signing in');
                            } else {
                              print('signed in');
                              print(result.uid);
                            }
                          },
                          color: Colors.red,
                          child: Text('Sign in anon'),
                        )
                      ],
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
