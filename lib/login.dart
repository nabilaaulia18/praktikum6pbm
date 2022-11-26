import 'package:flutter/material.dart';
import 'package:praktikum6/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _isBool = false;

  void _Boolean() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isBool = !_isBool;
      if(_isBool == true){
        Navigator.of(context).push(MaterialPageRoute(builder:(context) => HomePage(),));
        print("LOGIN BERHASIL");
        print(_isBool);
      }else{
        print("HARAP LOGIN TERLEBIH DAHULU");
        print(_isBool);
      }
    });
    prefs.setBool('isbool', _isBool);
  }

  _getBool() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isBool = prefs.getBool('isbool') ?? _isBool;
      if(_isBool == true){
        Navigator.of(context).push(MaterialPageRoute(builder:(context) => HomePage(),));
        print(_isBool);
        print("LOGIN DONE");
      }else{
        print(_isBool);
        print("HARAP LOGIN KEMBALI");
      }
    });
  }

  void initState(){
    super.initState();
    _getBool();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Klik untuk login",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(onPressed: _Boolean, child: const Text('GO!')),
              
            ],
          ),
        ),
      ),
    );
  }
}