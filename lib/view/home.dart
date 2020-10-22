import 'package:event_app/model/event.dart';
import 'package:event_app/service/provider.dart';
import 'package:event_app/view/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  static const page = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dicoding Event'),
        ),
        body: BodyScreem()
    );
  }
}

class BodyScreem extends StatefulWidget {
  @override
  _BodyScreemState createState() => _BodyScreemState();
}

class _BodyScreemState extends State<BodyScreem> {
  Future<Event> eventList;

  //inisialisasi data yg bisa disimpan di list
  @override
  void initState() {
    super.initState();
    eventList = getEvent();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Event>(
      future: eventList,
      builder: (context, snapshot) {
        //context buat page, snapshot buat datanya
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.active:
          case ConnectionState.waiting:
            return Center(child: CircularProgressIndicator());
          case ConnectionState.done:
            if (snapshot.hasError) return Text('Error: ${snapshot.error}');
            return ListView.builder(
                itemCount: snapshot.data.data.length,
                //dihitung panjang datanya
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(16.0),
                    child: FlatButton(
                      onPressed: () {
                        //menuju ke detail
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return DetailScreen(snapshot.data.data[index]);
                        }));
                      },
                      child: FittedBox(
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18.0),
                          shadowColor: Colors.grey,
                          elevation: 12.0,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 350.0,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          '${snapshot.data.data[index].name}',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          ' Lokasi : ${snapshot.data.data[index]
                                              .city_name}',
                                          style: TextStyle(fontSize: 16.0),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 200.0,
                                height: 200.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18.0),
                                  child: Image.network(
                                    '${snapshot.data.data[index].image_path}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                });
        }
        return null;
      },
    );
  }
}

