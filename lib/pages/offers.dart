import 'package:flutter/material.dart';
class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Offers",
          style: TextStyle(
            color: Color.fromARGB(255, 222, 225, 230),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 3, 16, 37),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
        children: [
          _buildOfferCard(
            context,
            'Special Discount',
            'Get 50% off on your next purchase!',
            'https://via.placeholder.com/150', // Replace with actual image URL
          ),
          _buildOfferCard(
            context,
            'Free Shipping',
            'Free shipping on orders over \$100.',
            'https://via.placeholder.com/150', // Replace with actual image URL
          ),
          _buildOfferCard(
            context,
            'Buy One Get One Free',
            'Buy one item and get another one for free!',
            'https://via.placeholder.com/150', // Replace with actual image URL
          ),
          // Add more offers as needed
        ],
      ),
    );
  }

  Widget _buildOfferCard(
    BuildContext context,
    String title,
    String description,
    String imageUrl,
  ) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network(imageUrl),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implement view more functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 3, 16, 37),
              ),
              child: Text(
                'View More',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: OffersPage(),
  ));
}