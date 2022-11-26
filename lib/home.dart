import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("SELAMAT DATANG",
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 62, 133, 241),
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(8.0),
                width: 150,
                height: 150,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profil.png"),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Color.fromARGB(255, 62, 133, 241),
                      child: Container(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Nabila Aulia Rahmah" ,style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Card(
                      color: Color.fromARGB(255, 62, 133, 241),
                      child: Container(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("+62 857 2121 66**" ,style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Card(
                      color: Color.fromARGB(255, 62, 133, 241),
                      child: Container(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Mahasiswa" ,style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Card(
                      color: Color.fromARGB(255, 62, 133, 241),
                      child: Container(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Kab. Bekasi" ,style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}