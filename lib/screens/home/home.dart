import 'package:flutter/material.dart';
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
        itemCount: 10,
        separatorBuilder: (_, index) {
          return Divider();
        },
      ),
    );
  }

  Widget builder(BuildContext _, int index) {
    return ListTile(
      leading: IconButton(
        icon: Icon(Icons.star, color: blueTheme,), 
        onPressed: () {},),
      trailing: IconButton(
        icon: Icon(Icons.chevron_right, color: grayTheme,), 
        onPressed: () {},),
        title: Row(
          children: [
            ClipOval(
              child: Image.asset
              ("assets/images/Nicole.jpg", 
              width: 50, 
              height: 50,
              fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nicole Soares", 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 14, 
                  color: grayTheme),
                ),
                Text("51 99422-7785", 
                style: TextStyle(
                  fontSize: 10),
                ),
              ],
            )
          ],
        ),
    );
  }
}
