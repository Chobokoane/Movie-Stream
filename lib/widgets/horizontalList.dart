import 'package:flutter/material.dart';
import 'package:moviestreaming/core/viewmodel/movie.dart';
import 'package:moviestreaming/moviesDetails.dart';

class HorizontalList extends StatelessWidget{
   final int index;

  const HorizontalList(this.index) ;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      padding: const EdgeInsets.all(10.0),
      width: 160,
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(MoviesDetails.routeName,
              arguments: {
                'id': movieList[index].id,
                'title': movieList[index].title,
                'imageUrl': movieList[index].imageUrl,
                'description': movieList[index].description,
                'rating': movieList[index].rating,
                'year': movieList[index].year,
                'during': movieList[index].duration,

              });

        },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Hero(
                tag: movieList[index].id,
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),

                      image: DecorationImage(
                          fit:BoxFit.cover,
                          image: NetworkImage(
                            movieList[index].imageUrl
                          ))
                  ),

                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(
                movieList[index].title,
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 16),
              textAlign: TextAlign.center,)
          ],
        ),
      ),
    );

  }

}