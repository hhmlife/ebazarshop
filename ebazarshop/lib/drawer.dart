import 'package:ebazarshop/pages/UserData/UserAccount.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Nitin Sharma"),
            accountEmail: Text("hhm.life@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
            ),
          ),
          GestureDetector(
              onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => UserAccount()));
          },
                      child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
          ),
          
        ],
      ),
    );
  }
}
