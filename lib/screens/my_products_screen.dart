
import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class MyProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Collections'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {

            },
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildNewCollectionButton(context),
          SizedBox(height: 16),
          _buildCollectionItem(context, 'Shoes', '../../assets/bag.jpg'),
          SizedBox(height: 16),
          _buildCollectionItem(context, 'Bags', '../../assets/bag.jpg'),
          SizedBox(height: 16),
          _buildCollectionItem(context, 'Male Wears', '../../assets/bag.jpg'),
          SizedBox(height: 16),
          _buildCollectionItem(context, 'Female Wears', '../../assets/bag.jpg'),
        ],
      ),
    );
  }

  Widget _buildCollectionItem(BuildContext context, String label, String imagePath) {
    return ListTile(
      leading: Image.asset(
        imagePath,
        width: 48,
        height: 48,
        fit: BoxFit.cover,
      ),
      title: Text(label),
      onTap: () {

        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductListScreen(collectionName: label)));
      },
    );
  }

  Widget _buildNewCollectionButton(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      title: Text('New Collection'),
      onTap: () {

      },
    );
  }
}
