import 'package:flutter/material.dart';
import 'package:shopeazy/store_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 300.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100.withOpacity(0.4),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(150.0),
                      topRight: Radius.circular(150.0),
                    ),
                  ),
                ),
                const Positioned.fill(
                  bottom: -20,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "ShopEazy",
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50.0),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const StoreScreen(),
                  ),
                );
              },
              child: Text(
                "Open Store",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.orange.shade300,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
