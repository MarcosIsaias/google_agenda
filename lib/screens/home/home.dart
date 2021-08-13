import 'package:flutter/material.dart';
import 'package:google_agenda/models/contact.dart';
import 'package:google_agenda/provider/list_of_contacts.dart';
import 'package:google_agenda/screens/details/details.dart';
import 'package:google_agenda/style.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus Contatos"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        itemBuilder: builder,
        itemCount: listOfContacts.length,
        separatorBuilder: (_, index) {
          return Divider();
        },
      ),
    );
  }

  Widget builder(BuildContext _, int index) {
    Contact _contact = listOfContacts.elementAt(index);
    return ListTile(
      leading: IconButton(
        icon: (_contact.isFavorite)
            ? Icon(
                Icons.star,
                color: blueTheme,
              )
            : Icon(
                Icons.star_outline,
                color: blueTheme,
              ),
        onPressed: () {
          setState(() {
            _contact.isFavorite = !_contact.isFavorite;
          });
        },
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.chevron_right,
          color: grayTheme,
        ),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext _) {
            return Details(_contact);
          }));
        },
      ),
      title: Row(
        children: [
          Hero(
            tag: _contact.name,
            child: ClipOval(
              child: Image.asset(
                _contact.photo,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _contact.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: grayTheme),
              ),
              Text(
                _contact.phone,
                style: TextStyle(fontSize: 10),
              ),
            ],
          )
        ],
      ),
    );
  }
}
