import 'package:flutter/material.dart';
import 'package:travel_list/screens/configurator/trip_edit_screen.dart';

import 'items_source.dart';

class ConfigurationStepper extends StatefulWidget {
  final List<Widget> steps;
  const ConfigurationStepper(this.steps);

  @override
  _ConfigurationStepperState createState() => _ConfigurationStepperState();
}

class _ConfigurationStepperState extends State<ConfigurationStepper>
    with SingleTickerProviderStateMixin {

  TabController _tabController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {setState(() {});});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: TabBarView(
          controller: _tabController,
          children: widget.steps,
        ),
      ),
      body: Column(
        children: <Widget>[
          TripEditScreen(),
          _itemSourceRadio(),
          _stepperBottomBar(),
        ],
      ),
    );
  }

  Expanded _itemSourceRadio() {
    return Expanded (
      child: ListView.builder(
          itemCount: itemsSources.length,
          itemBuilder: (BuildContext context, int i) {
            ItemsSource itemsSource = itemsSources.keys.elementAt(i);
            return RadioListTile<ItemsSource>(
              title: Text(itemsSources[itemsSource].radioButtonLabel),
              value: itemsSource,
              groupValue: itemsSource,
              onChanged: (ItemsSource value) {
                setState(() { itemsSource = value; });
              },
            );
          }
      ),
    );
  }

  Flexible _stepperBottomBar() {
    return Flexible (
      child: Row(
        children: <Widget>[
          FlatButton(
            onPressed: _tabController.index > 0
              ? () {_tabController.animateTo(_tabController.index - 1);}
              : null,
            child: Row(
              children: const <Widget>[
                Icon(Icons.chevron_left,),
                Text('BACK'),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: TabPageSelector(controller: _tabController,),
            ),
          ),
          FlatButton(
            onPressed: () {
              switch (_tabController.index) {
                case 0: {
                  return _formKey.currentState.validate()
                    ? () {
                      _formKey.currentState.save();
                      //DbImitation.trips.add(trip);
                      _tabController.animateTo(_tabController.index + 1);
                    }
                    : null;
                }
                case 1: {
                  return _tabController.index < _tabController.length - 1
                    ? () {_tabController.animateTo(_tabController.index + 1);}
                    : null;
                }
                case 2: {
                  return _tabController.index < _tabController.length - 1
                    ? () {_tabController.animateTo(_tabController.index + 1);}
                    : null;
                }
                default: return null;
              }
            },
            child: Row(
              children: const <Widget>[
                Text('NEXT'),
                Icon(Icons.chevron_right,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}