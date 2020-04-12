import 'package:flutter/material.dart';
import 'package:moviestreaming/core/viewmodel/movie.dart';
import 'package:moviestreaming/moviesDetails.dart';

//class Vertical extends StatefulWidget {
//  @override
//  _VerticalState createState() => _VerticalState();
//}

class Vertical extends StatelessWidget {
  final int index;

  const Vertical(this.index) ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(MoviesDetails.routeName,
                arguments: {
                  'id': bestMovieList[index].id,
                  'title': bestMovieList[index].title,
                  'imageUrl': bestMovieList[index].imageUrl,
                  'description': bestMovieList[index].description,
                  'rating': bestMovieList[index].rating,
                  'year': bestMovieList[index].year,
                  'during': bestMovieList[index].duration,
                });
          },
          child: Card(
            elevation: 5,
            child: Row(
              children: <Widget>[
                Hero(
                  tag: bestMovieList[index].id,
                  child: Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                bestMovieList[index].imageUrl))),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        bestMovieList[index].title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: 240,
                        child: Text(
                          bestMovieList[index].description,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}
