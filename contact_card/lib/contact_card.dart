import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  String name, mail, phone, photo, text;
  ContactCard({this.name, this.mail, this.phone, this.photo, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150.0,
          width: 350.0,
          margin: EdgeInsets.symmetric(vertical: 30.0),
          decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      this.photo
                  ),
                  radius: 20.0,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        this.name,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,

                        ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.mail, color: Colors.white,),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                              this.mail
                          ),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.white,),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                              this.phone
                          ),
                        ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.auto_delete, color: Colors.white,),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                          ),
                        ]
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}