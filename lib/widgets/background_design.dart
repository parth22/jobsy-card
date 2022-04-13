import 'package:flutter/material.dart';

class BackGroundDesign extends StatelessWidget {
  const BackGroundDesign({this.imageUrl});
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                  Colors.transparent, BlendMode.exclusion),
              child: Image.asset(imageUrl!),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: <Color>[
                    Color.fromRGBO(255, 87, 210, 0.35),
                    Color(0xff3381F3),
                  ],
                  stops: const <double>[0.4, 0.80],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
