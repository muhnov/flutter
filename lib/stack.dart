import 'package:flutter/material.dart';

class StackProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Muhammad Noviyanto')),
      body: Center(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/profile.png'),
                  fit: BoxFit.cover,
                ),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(
                  16,
                ), // Bisa diatur radius sudut
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(8),
              child: Icon(Icons.edit, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: StackProfile()));
