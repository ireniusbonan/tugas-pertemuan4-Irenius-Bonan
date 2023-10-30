import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final name;
  Profile({@required this.name});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
            print('Back to previous page');
          },
        ),
        title: Text('PROFILE'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 75,
              backgroundImage: NetworkImage(
                  'https://i0.wp.com/newsborneo.id/wp-content/uploads/2022/12/avatar-ai.jpg?fit=830%2C553&ssl=1'),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
                child: Text(
              widget.name,
              style: TextStyle(
                fontSize: 25,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
