import 'package:flutter/material.dart';
import 'package:google_agenda/models/contact.dart';
import 'package:google_agenda/style.dart';

class Details extends StatelessWidget {
  final Contact _selectedContact;

  Details(this._selectedContact);

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          (_selectedContact.isFavorite)? 
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: Icon(Icons.star),
          ): 
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: Icon(Icons.star_outline),
          ),
        ],
      ),
      floatingActionButton: 
      FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: _selectedContact.name,
              child: Image.asset(_selectedContact.photo)
            ),
            Padding(padding: const EdgeInsets.only(top: 20, left: 16), 
            child: Text(_selectedContact.name,
            style: TextStyle(
              color: grayTheme,
              fontSize: 24),),
            ),
            Divider(),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.phone, size: 30,),
                        Text("Ligar", style: TextStyle(color: blueTheme, fontSize: 12),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.chat, size: 30,),
                        Text("Menssagem SMS", style: TextStyle(color: blueTheme, fontSize: 12),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.video_call, size: 30,),
                        Text("Video", style: TextStyle(color: blueTheme, fontSize: 12),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.email, size: 30,),
                        Text("Enviar Email", style: TextStyle(color: blueTheme, fontSize: 12),),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40,),
                Row( 
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 5,),
                    Column(
                      children: [
                        Text(
                          _selectedContact.phone,
                          style: TextStyle(
                            color: grayTheme, 
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "Celular",
                          style: TextStyle(
                            color: grayTheme, 
                            fontSize: 15,
                          ),),
                      ],
                    ),
                    SizedBox(width: 300,),
                    Icon(Icons.video_call),
                    SizedBox(width: 5,),
                    Icon(Icons.chat),
                   ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                    Icon(Icons.email),
                    SizedBox(width: 5,),
                    Text(
                      _selectedContact.email, 
                      style: TextStyle(
                        color: grayTheme, 
                        fontSize: 12,
                      ),
                     ),
                   ],
                  )
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
