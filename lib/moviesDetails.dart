import 'package:flutter/material.dart';

class MoviesDetails extends StatelessWidget {
  static const routeName = '/movies-details';
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final id = routeArgs['id'];

    return Scaffold(
      backgroundColor:Color(0xfff4f4f4) ,
        appBar: AppBar(
          backgroundColor: Color(0xfff4f4f4),
          elevation: 0,
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Column(
            children: [
              Center(
                child: Card(
                  elevation: 5,
                  child: Hero(
                    tag: id,
                    child: Container(
                      height: 380,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                             routeArgs['imageUrl']),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                routeArgs['title'],
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.timer,
                              size: 45,
                              color: Theme.of(context).primaryColor,
                            ),
                            SizedBox(height: 10),
                            Text( routeArgs['during'], style: TextStyle(fontSize: 14))
                          ],
                        ),
                      )),
                  Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.calendar_today,
                              size: 45,
                              color: Theme.of(context).primaryColor,
                            ),
                            SizedBox(height: 10),
                            Text(routeArgs['year'], style: TextStyle(fontSize: 14))
                          ],
                        ),
                      )),
                  Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.star_border,
                              size: 45,
                              color: Theme.of(context).primaryColor,
                            ),
                            SizedBox(height: 10),
                            Text('${routeArgs['rating']}/10', style: TextStyle(fontSize: 14))
                          ],
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                routeArgs['description'],
                style: TextStyle(fontSize: 18, height: 1.5),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.play_circle_filled),
                    Text(
                      'Watch Trailer',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: RaisedButton(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                onPressed: () {},
                color: Colors.yellow,
                textColor: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.check_circle_outline),
                    Container(
                      height: 5,
                      width: 5,
                    ),
                    Text(
                      'Buy Now',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
