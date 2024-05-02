import 'package:flutter/material.dart';

class AddNewProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 18.0),
        child: Text(
          'New Product',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      centerTitle: false,
      titleSpacing: 0,
    ),

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_outlined),
            label: 'My Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Manage',
          ),
        ],
        currentIndex: 2,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue.withOpacity(0.5),
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {

        },
      ),
      body: Padding(
        padding: EdgeInsets.all(26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            TextField(
              decoration: InputDecoration(
                hintText: 'Enter product name',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Brand',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 16),

            TextField(
              decoration: InputDecoration(
               hintText: 'Price',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 16),


            Row(
              children: [
                Container(
                  width: 96, // Double the size
                  height: 96, // Double the size
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Container(
                      width: 48, // Size of the inner square
                      height: 48, // Size of the inner square
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[200], // Denser blue color for the icon
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.photo,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24),
                    Text(
                      'Add Image',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            )

          ],
        ),
      ),


    );
  }
}
