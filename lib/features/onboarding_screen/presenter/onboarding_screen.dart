import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class OnboardingScreen extends StatelessWidget {
   OnboardingScreen();

  final List<GoalCategory> categories = [
    GoalCategory('Self Acceptance', Colors.lime),
    GoalCategory('Fears', Colors.grey[800]!),
    GoalCategory('Memory', Colors.grey[800]!),
    GoalCategory('Personal boundaries', Colors.grey[800]!),
    GoalCategory('Parents', Colors.grey[800]!),
    GoalCategory('Doubts', Colors.blue[200]!),
    GoalCategory('Controlling emotions', Colors.amber),
    GoalCategory('Parenting', Colors.grey[800]!),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // PageView indicators
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            
            // Title
            const Text(
              'Choose\nyour goals',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 40),
            Expanded(child: SizedBox()),
            // Scrollable categories using StaggeredGrid
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                // Ancho mínimo para asegurar que el scroll funcione bien
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.sizeOf(context).height * 0.4,
                  minHeight: MediaQuery.sizeOf(context).height * 0.1,
                  minWidth: MediaQuery.of(context).size.width,
                ),
                child: StaggeredGrid.count(
                  crossAxisCount: 4, // Número de filas
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  children: categories.map((category) {
                    return StaggeredGridTile.fit(
                      crossAxisCellCount: 1,
                      child: ActionChip(
                        label: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 4.0,
                          ),
                          child: Text(
                            category.name,
                            style: TextStyle(
                              color: category.color == Colors.grey[800] 
                                ? Colors.white 
                                : Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        backgroundColor: category.color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {
                          // Handle chip selection
                        },
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GoalCategory {
  final String name;
  final Color color;

  GoalCategory(this.name, this.color);
}