import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moviestreaming/core/viewmodel/movie.dart';
import 'package:moviestreaming/moviesDetails.dart';
//class HorizontalList extends StatefulWidget{
//  //final FirebaseUser user;
//   final int index;
//
//  const HorizontalList(this.index) ;
//  @override
//  _HomeView createState()=> _HomeView();
//
//}
class TopRatedMovies extends StatelessWidget{
  final int index;

  const TopRatedMovies(this.index) ;
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
                'id': topRatedMovies[index].id,
                'title': topRatedMovies[index].title,
                'imageUrl': topRatedMovies[index].imageUrl,
                'description': topRatedMovies[index].description,
                'rating': topRatedMovies[index].rating,
                'year': topRatedMovies[index].year,
                'during': topRatedMovies[index].duration,

              });

        },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Hero(
                tag: topRatedMovies[index].id,
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),

                      image: DecorationImage(
                          fit:BoxFit.cover,
                          image: NetworkImage(
                              topRatedMovies[index].imageUrl
                          ))
                  ),

                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(
              topRatedMovies[index].title,
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 16),
              textAlign: TextAlign.center,)
          ],
        ),
      ),
    );

  }

}