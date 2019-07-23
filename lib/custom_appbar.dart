import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<CustomAppBar> with SingleTickerProviderStateMixin {
  int _oposition = 0;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );
  }

  _updateClicked(int position) {
    setState(() {
      _oposition = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
         
               Positioned(
                // rect: CurvedAnimation(),
                                child: Container(
              height: 40,
              width: 100,
              //padding: EdgeInsets.only(top: 8, bottom: 8, right: 12, left: 12),
              decoration: BoxDecoration(
                   color: Colors.blue[100],
                   borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
               ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    IconTheme(
                      child: Icon(Icons.home),
                      data: IconThemeData(color: Colors.blue[400]),
                    ),
                    //Icon(Icons.home),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "Home",
                        style: TextStyle(color: Colors.blue[400]),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.explore),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text("Explore"),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.shopping_cart),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text("Cart"),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
