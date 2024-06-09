import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfileHeader(),
            _buildSectionDivider(),
            _buildProfileOption(
              icon: Icons.account_circle,
              title: "Personal Information",
              onTap: () {
                // Navigate to Personal Information Page
              },
            ),
            _buildProfileOption(
              icon: Icons.shopping_bag,
              title: "Your Orders",
              onTap: () {
                // Navigate to Orders Page
              },
            ),
            _buildProfileOption(
              icon: Icons.payment,
              title: "Payment Methods",
              onTap: () {
                // Navigate to Payment Methods Page
              },
            ),
            _buildProfileOption(
              icon: Icons.settings,
              title: "Account Settings",
              onTap: () {
                // Navigate to Account Settings Page
              },
            ),
            _buildProfileOption(
              icon: Icons.help_outline,
              title: "Help & Support",
              onTap: () {
                // Navigate to Help & Support Page
              },
            ),
            _buildSectionDivider(),
            _buildProfileOption(
              icon: Icons.logout,
              title: "Logout",
              onTap: () {
                // Implement logout functionality
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Container(
      color: Color.fromARGB(255, 6, 18, 33),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with actual image
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'johndoe@example.com',
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProfileOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Color.fromARGB(255, 6, 18, 33)),
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
      onTap: onTap,
    );
  }

  Widget _buildSectionDivider() {
    return Divider(
      height: 20,
      thickness: 2,
      color: Colors.grey[300],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}