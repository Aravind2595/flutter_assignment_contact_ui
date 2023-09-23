import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: ContactList(),
  ));
}

class ContactList extends StatefulWidget {
  @override
  State<ContactList> createState() => _ContactListState();
}


class _ContactListState extends State<ContactList> {
  var contactName = [
    'John Judah',
    'Bisola Akanbi',
    'Eghosa Iku',
    'Andrew Ndebuisi',
    'Arinze Dayo',
    'Wakara Zimbu',
    'Emaechi Chinedu',
    'Emma Watson',
    'Peter Parker',
    'Uchia Suske',
    'Naruto Uzumaki',
    'Hatake Kakashi'
  ];

  var contactNumber = [
    '23480319458443',
    '23480785403343',
    '23480319803343',
    '23484489803343',
    '23487892423343',
    '23482347586443',
    '23475124583343',
    '23495842672343',
    '23424781358943',
    '23488745392563',
    '23478974123583',
    '23484963574233'
  ];

  var colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.teal,
    Colors.cyan,
    Colors.yellow,
    Colors.deepPurple,
    Colors.lightGreen,
    Colors.pinkAccent,
    Colors.indigo,
    Colors.deepOrange
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SimpleContactList"),),
      body: ListView(
        children: List.generate(12, (index) =>
            Card(
              margin:EdgeInsets.all(0.2),
              child: ListTile(leading: Icon(
                Icons.account_circle_rounded, color: colorList[index],size: 40,),
                title: Text(contactName[index]),
                subtitle: Text(contactNumber[index]),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 12,)),),
            )),),
    );
  }
}