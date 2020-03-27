import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_list/screens/trip/trip.dart';
import 'package:travel_list/shared/routing_constants.dart';
import 'package:travel_list/shared/db_imitation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget newTravelListBtn(context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
      child: RaisedButton(
        child: Text('Create list for next travel'),
        onPressed: () {
          Navigator.of(context).pushNamed(TripEditRoute, arguments: Trip())
              .then((value) { // обновление страницы после редактирования
                setState(() {});
              });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Travel List'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            newTravelListBtn(context),
            Expanded(
              child:
              Container(
                child: ListView.builder(
                  itemCount: DbImitation.trips.length,
                  itemBuilder: (context, i) {
                    Trip _trip = DbImitation.trips[i];
                    return Container(
                      height: 50,
                      color: Colors.amber[50*(i+1)],
                      child: Center(
                        child: InkWell(
                          child: Text('${_trip.name}'),
                          onTap: () {
                            Navigator.of(context).pushNamed(TripRoute, arguments: _trip);
                          }
                        )
                      ),
                    );
                  }
                )
              )
            )
          ],
        ),
    );
  }
}