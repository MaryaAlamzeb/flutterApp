import 'package:flutter/material.dart';


class ManageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.contact_phone,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Contacts',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () {

                    },
                    icon: Icon(Icons.add),
                    label: Text(
                      'Create Contact',
                      style: TextStyle(color: Colors.grey), // Set text color to grey
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),

                      minimumSize: MaterialStateProperty.all<Size>(Size(200, 50)), // Adjust size as needed
                    ),
                  ),


                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contacts'),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.swap_vert),
              title: Text('Frequently Contacted'),
              onTap: () {

              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Labels'),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Create Label'),
              onTap: () {

              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.import_export),
              title: Text('Import'),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.print),
              title: Text('Print'),
              onTap: () {

              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Manage Screen'),
      ),
    );
  }
}


