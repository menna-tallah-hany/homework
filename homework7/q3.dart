/* Q3 Create a class Movie with attributes title and rating. In main(), create 
a list of 4 movies. Print
only the movies with a rating above 7.*/
void main() {
  List<Movie> movies = [
    Movie('Inception', 8.8),
    Movie('Titanic', 7.0),
    Movie('The Dark Knight', 9.0),
    Movie('Interstellar', 8.7),
  ];
  for (var movie in movies) {
    if (movie.rating > 7) {
      print(movie.title);
    }
  }
}

class Movie {
  String title;
  double rating;
  Movie(this.title, this.rating) {}
}
