import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_list/models/trip.dart';
import 'package:travel_list/presentation/pages/luggage_lists/trips/widgets/sidebar_drawer.dart';
import 'package:travel_list/shared/db_imitation.dart';

class TripsOverviewPage extends StatelessWidget {

  Widget newTravelListBtn(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
      child: RaisedButton(
        onPressed: () {
//          Navigator.of(context).pushNamed(configuratorRoute, arguments: Trip())
//            .then((value) { // обновление страницы после редактирования
//              setState(() {});
//            });
        },
        child: const Text('Create list for next travel'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SidebarDrawer(),
      appBar: AppBar(
        title: const Text('Packing Helper'), // todo nice application name
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          newTravelListBtn(context),
          Expanded(
            child: ListView.builder(
              itemCount: DbImitation.trips.length,
              itemBuilder: (context, i) {
                final Trip _trip = DbImitation.trips[i];
                return Container(
                  height: 50,
                  color: Colors.amber[50*(i+1)],
                  child: Center(
                    child: InkWell(
                      onTap: () {
//                        Navigator.of(context).pushNamed(luggageListRoute, arguments: _trip);
                      },
                      child: Text(_trip.name),
                    )
                  ),
                );
              }
            )
          ),
        ],
      ),
    );
  }
}