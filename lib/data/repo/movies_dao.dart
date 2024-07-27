import 'package:myapp/data/entity/movies.dart';
import 'package:myapp/sqflite/db_helper.dart';

class MoviesRepository {
  Future<List<Movies>> GetMovies() async {
  try {
    var db = await DbHelper.openDb();
    List<Map<String, dynamic>> maps = await db.rawQuery('SELECT * FROM films');
    return List.generate(maps.length, (i) {
      var row = maps[i];
      return Movies(
        id: row['id'],
        price: row['price'],
        image: row['image'],
      );
    });
  } catch (e) {
    // Handle error (e.g., log it, show a message)
    print('Error fetching movies: $e');
    return [];
  }
}
}