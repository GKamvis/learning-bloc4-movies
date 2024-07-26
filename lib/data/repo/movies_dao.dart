import 'package:myapp/data/entity/movies.dart';

class MoviesRepository{
  
    Future<List<Movies>> addMovies() async {
    List<Movies> moviesList = <Movies>[];
    var m1 = Movies(id: 1, price: "234", image: "gladiator.png");
    var m2 = Movies(id: 2, price: "23", image: "holmes.png");
    var m3 = Movies(id: 3, price: "44", image: "interception.png");
    var m4 = Movies(id: 4, price: "374", image: "lordofrings.png");
    var m5 = Movies(id: 5, price: "34", image: "snitch.png");

    moviesList.add(m1);
    moviesList.add(m2);
    moviesList.add(m3);
    moviesList.add(m4);
    moviesList.add(m5);
    return moviesList;
  }


}