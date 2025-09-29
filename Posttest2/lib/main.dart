import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wireframe Jadwal Kereta',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[400], 
          foregroundColor: Colors.black,     
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            height: 150,
            color: Colors.grey[300],
            margin: EdgeInsets.only(bottom: 20),
            child: Center(child: Text("Header Image")),
          ),

          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.2,
            physics: NeverScrollableScrollPhysics(),
            children: [
              _buildMenuCard(context, "Cari Jadwal", SearchPage()),
              _buildMenuCard(context, "Rute Kereta", RoutePage()),
              _buildMenuCard(context, "Stasiun", StationPage()),
              _buildMenuCard(context, "Informasi", InfoPage()),
            ],
          ),

          SizedBox(height: 20),

          Container(
            height: 100,
            color: Colors.grey[200],
            child: Center(child: Text("Info Section")),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, String title, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => page));
      },
      child: Container(
        color: Colors.grey[300],
        child: Center(child: Text(title)),
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cari Jadwal")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(height: 50, color: Colors.grey[300], margin: EdgeInsets.only(bottom: 12)),
          Container(height: 50, color: Colors.grey[300], margin: EdgeInsets.only(bottom: 12)),
          Container(height: 50, color: Colors.grey[300], margin: EdgeInsets.only(bottom: 20)),

          Container(
            height: 45,
            color: Colors.grey[400],
            child: Center(child: Text("Cari Jadwal", style: TextStyle(color: Colors.white))),
          ),
          SizedBox(height: 20),

          Container(height: 80, color: Colors.grey[200], margin: EdgeInsets.only(bottom: 12)),
          Container(height: 80, color: Colors.grey[200], margin: EdgeInsets.only(bottom: 12)),
          Container(height: 80, color: Colors.grey[200], margin: EdgeInsets.only(bottom: 12)),
        ],
      ),
    );
  }
}

class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rute Kereta")),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            height: 70,
            color: Colors.grey[300],
            margin: EdgeInsets.only(bottom: 12),
            child: Center(child: Text("Rute ${index + 1}")),
          );
        },
      ),
    );
  }
}

class StationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stasiun")),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            height: 60,
            color: Colors.grey[300],
            margin: EdgeInsets.only(bottom: 10),
            child: Center(child: Text("Stasiun ${index + 1}")),
          );
        },
      ),
    );
  }
}

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Informasi")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            height: 120,
            color: Colors.grey[300],
            margin: EdgeInsets.only(bottom: 16),
            child: Center(child: Text("App Info Placeholder")),
          ),
          Container(height: 60, color: Colors.grey[200], margin: EdgeInsets.only(bottom: 12)),
          Container(height: 60, color: Colors.grey[200], margin: EdgeInsets.only(bottom: 12)),
          Container(height: 60, color: Colors.grey[200], margin: EdgeInsets.only(bottom: 12)),
          Container(height: 60, color: Colors.grey[200], margin: EdgeInsets.only(bottom: 12)),
        ],
      ),
    );
  }
}