import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipOval(
              child: Image.asset(
                'assets/images/profile.jpg', // แทนที่ด้วย path ของรูปของคุณ
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
                padding: EdgeInsets.fromLTRB(0,20,0,0),
                child: Text('Natnaree Phianjud',
                style: TextStyle(
                  fontSize: 35
                ),),
              ),
            
              const Padding(
                padding: EdgeInsets.fromLTRB(0,20,0,0),
                child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:60),
                        child: Icon(
                              Icons.mail,
                              color: Color.fromARGB(255, 73, 73, 73),
                              size: 35.0,
                                ),
                      ),
                      Text('     6340011004@psu.ac.th',
                      style: TextStyle(
                        fontSize: 20
                      ),),
                  ],),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0,20,0,0),
                child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 60),
                        child: Icon(
                              Icons.call,
                              color: Color.fromARGB(255, 73, 73, 73),
                              size: 35.0,
                                ),
                      ),
                      Text('     0630609211',
                      style: TextStyle(
                        fontSize: 20
                      ),),
                  ],),
              ),
              
          ],
        ),
      ),
    );
  }
}