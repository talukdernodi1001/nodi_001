
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const sage = Color(0xFFDDE8DF);
    const cream = Color(0xFFFAF7F0);
    const forest = Color(0xFF354B40);
    const darkSage = Color(0xFF607D6B);

    return Scaffold(
      backgroundColor: cream,

      // App bar
      appBar: AppBar(
        title: const Text('Flutter Explorer'),
        backgroundColor: sage,
        foregroundColor: forest,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.explore),
            tooltip: 'Open menu',
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          IconButton(
            tooltip: 'Search',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Search selected'),
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            tooltip: 'Profile',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Profile selected'),
                ),
              );
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),

      // Navigation drawer
      drawer: Drawer(
        backgroundColor: cream,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: forest,
              ),
              accountName: Text('Your Name'),
              accountEmail: Text('your@email.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: sage,
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: forest,
                ),
              ),
            ),

            ListTile(
              leading: const Icon(
                Icons.home,
                color: forest,
              ),
              title: const Text('Home'),
              hoverColor: sage,
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Divider(color: sage),

            ListTile(
              leading: const Icon(
                Icons.settings,
                color: forest,
              ),
              title: const Text('Settings'),
              hoverColor: sage,
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Settings selected'),
                  ),
                );
              },
            ),

            const Spacer(),

            const Divider(color: sage),

            ListTile(
              leading: const Icon(
                Icons.logout,
                color: forest,
              ),
              title: const Text('Logout'),
              hoverColor: sage,
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Logout selected'),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      // Floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Add button pressed!'),
            ),
          );
        },
        backgroundColor: darkSage,
        foregroundColor: Colors.white,
        tooltip: 'Add something',
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),

      // Main content
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            'Welcome to Flutter Explorer!',
            textAlign: TextAlign.center,
            style: GoogleFonts.lobster(
              textStyle: const TextStyle(
                fontSize: 30,
                color: darkSage,
              ),
            ),
          ),
        ),
      ),
    );
  }
}