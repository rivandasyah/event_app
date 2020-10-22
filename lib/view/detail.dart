import 'package:event_app/model/data.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Data event;

  DetailScreen(this.event);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.network('${event.image_path}'),
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Container(
                          child: FavoriteButton()
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                child: Text(
                  '${event.name}',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Kuota : ${event.quota}',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      'Kategory : ${event.category}',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      'Tempat : ${event.city_name}',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      'Mulai : ${event.begin_time}',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      'Selesai : ${event.end_time}',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        }
    );
  }
}

