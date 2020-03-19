import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 20),
              _buildAvatar(),
              SizedBox(height: 20),
              Text(
                'Fikky Ardianto',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 4),
              Text(
                'fikky.ardi15@gmail.com',
                style: TextStyle(fontSize: 20, color: Colors.black45),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildAvatar() {
    return Container(
      height: 250.0,
      width: 250.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(0, 2),
            blurRadius: 2.0,
          ),
        ],
      ),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: ClipOval(
          child: Image(
            image: NetworkImage(
              'https://i1.rgstatic.net/ii/profile.image/850708203057152-1579836049184_Q512/Fikky_Ardianto.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
