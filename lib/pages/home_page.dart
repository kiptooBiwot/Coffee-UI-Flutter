import 'package:coffee_ui/utilities/cofee_tile.dart';
import 'package:coffee_ui/utilities/coffee_types.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Find the best coffee for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Find the best coffee for you',
                style: GoogleFonts.bebasNeue(
                  textStyle: const TextStyle(
                    fontSize: 56.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),

            // Search bar

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Find your coffee...',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade600,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade600,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25.0),

            // Horizontal list view of coffee tiles

            Container(
              padding: const EdgeInsets.only(left: 25.0),
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CoffeeType(coffeeType: 'Cappuccino', isSelected: true),
                  CoffeeType(coffeeType: 'Black', isSelected: false),
                  CoffeeType(coffeeType: 'Latte', isSelected: false),
                ],
              ),
            ),

            const SizedBox(height: 25.0),

            SizedBox(
              height: 260.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CoffeeTile(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
