import 'package:flutter/material.dart';

import 'contact_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              children: [
                ContactCard(
                  name: 'Jon Snow',
                  mail: 'jon_snow@gmail.com',
                  phone: '01234567891',
                  photo: 'https://upload.wikimedia.org/wikipedia/en/thumb/3/30/Jon_Snow_Season_8.png/220px-Jon_Snow_Season_8.png',
                ),
                ContactCard(
                  name: 'Daenerys Targaryen',
                  mail: 'daenerys_targaryen@gmail.com',
                  phone: '01234567891',
                  photo: 'https://pbs.twimg.com/profile_images/1117967801652617216/i8PWXebo_400x400.jpg',
                ),
                ContactCard(
                  name: 'Tyrion Lannister',
                  mail: 'tyrion_lannister@gmail.com',
                  phone: '01234567891',
                  photo: 'https://upload.wikimedia.org/wikipedia/en/thumb/5/50/Tyrion_Lannister-Peter_Dinklage.jpg/220px-Tyrion_Lannister-Peter_Dinklage.jpg',
                ),
              ],
            ),

          ),
        )
      ),
    )
  ;}
}

/*Row(
mainAxisAlignment: MainAxisAlignment.end,
children: [
Icon(Icons.auto_delete, color: Colors.white,),
Padding(
padding: EdgeInsets.only(left: 10.0),
),
Text(
this.text
)
]
)*/