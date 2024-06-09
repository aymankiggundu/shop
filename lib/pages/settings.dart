import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
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
            _buildSectionHeader("Account Settings"),
            _buildSettingsOption(
              icon: Icons.person,
              title: "Edit Profile",
              onTap: () {
                // Navigate to Edit Profile Page
              },
            ),
            _buildSettingsOption(
              icon: Icons.security,
              title: "Change Password",
              onTap: () {
                // Navigate to Change Password Page
              },
            ),
            _buildSettingsOption(
              icon: Icons.email,
              title: "Email Preferences",
              onTap: () {
                // Navigate to Email Preferences Page
              },
            ),
            _buildSectionDivider(),
            _buildSectionHeader("Notifications"),
            _buildSettingsOption(
              icon: Icons.notifications,
              title: "Push Notifications",
              onTap: () {
                // Navigate to Push Notifications Settings Page
              },
            ),
            _buildSettingsOption(
              icon: Icons.sms,
              title: "SMS Notifications",
              onTap: () {
                // Navigate to SMS Notifications Settings Page
              },
            ),
            _buildSectionDivider(),
            _buildSectionHeader("Privacy"),
            _buildSettingsOption(
              icon: Icons.lock,
              title: "Privacy Settings",
              onTap: () {
                // Navigate to Privacy Settings Page
              },
            ),
            _buildSettingsOption(
              icon: Icons.location_on,
              title: "Location Settings",
              onTap: () {
                // Navigate to Location Settings Page
              },
            ),
            _buildSectionDivider(),
            _buildSettingsOption(
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

  Widget _buildSectionHeader(String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      alignment: Alignment.centerLeft,
      color: Colors.grey[200],
      child: Text(
        title,
        style: TextStyle(
          color: Color.fromARGB(255, 3, 16, 37),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildSettingsOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Color.fromARGB(255, 3, 16, 37)),
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
    home: SettingsPage(),
  ));
}