import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  final String name;
  final String avatar;
  Welcome({required this.name, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        children: [
          Row(
            children: [
              Text(
                'Hi $name',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight:FontWeight.w900,
                  fontSize: 30.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:20.0),
                child: Image(
                  image: AssetImage('assets/icons/hand-emoji.png'),

                )
              ),
            ]
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/icons/avatar.png'),
          ),
        ],
      ),
    );
  }
}


