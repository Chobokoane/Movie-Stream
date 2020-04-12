import 'package:flutter/material.dart';

class  Background extends StatelessWidget{
  final String imageSrc;
  Background({Key key, this.imageSrc}): super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imageSrc),
          fit: BoxFit.cover,
        )
      ),
      
    );
  }

}

