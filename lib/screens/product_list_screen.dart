import 'package:flutter/material.dart';
import 'add_new_product_screen.dart';

class ProductListScreen extends StatelessWidget {
  final String collectionName;

  const ProductListScreen({Key? key, required this.collectionName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Spacer(),
            Container(
              padding: EdgeInsets.all(8),
              child: IconButton(
                icon: Icon(Icons.search, size: 30),
                onPressed: () {

                },
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          _buildNewProductButton(context),
          SizedBox(height: 16),
          _buildProductsItem(context, 'Shoes', '../../assets/bag.jpg', '4499'),
          SizedBox(height: 16),
          _buildProductsItem(context,'Bags', '../../assets/bag.jpg', '4499'),
          SizedBox(height: 16),
          _buildProductsItem(context, 'Male Wears', '../../assets/bag.jpg', '4499'),
          SizedBox(height: 16),
          _buildProductsItem(context, 'Female Wears', '../../assets/bag.jpg', '4499'),
        ],
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
    );


  }

  Widget _buildProductsItem(BuildContext context, String label, String imagePath, String price) {
    return ListTile(
      leading: Image.asset(
        imagePath,
        width: 48,
        height: 48,
        fit: BoxFit.cover,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label), // Element name
          Text('Rs $price', style: TextStyle(fontWeight: FontWeight.bold)), // Price
        ],
      ),
      subtitle: Text('by Zara', style: TextStyle(fontSize: 12, color: Colors.grey)),
      onTap: () {

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductListScreen(collectionName: label)),
        );
      },
    );
  }

  Widget _buildNewProductButton(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue, // Background color
        ),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Icon(
            Icons.add,
            color: Colors.white, // Icon color
          ),
        ),
      ),
      title: Text('Add New Product'),
      onTap: () {
        _navigateToAddNewProduct(context);
      },
    );
  }

  void _navigateToAddNewProduct(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddNewProductScreen()),
    );
  }
}