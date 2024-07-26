import 'package:flutter/material.dart';
import 'package:myapp/data/entity/movies.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Movies movies = ModalRoute.of(context)?.settings.arguments as Movies;

    print('Received movie: ${movies.image}, ${movies.price}'); // Yoxlama üçün əlavə edilib

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies Page'),
      ),
      body: Center(
        child: Card(
          child: Column(
            children: [
              Image.asset(
                "assets/images/${movies.image}",
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Row(
                    children: [
                      Text('Price:${movies.price}'),
                     
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
