import 'package:flutter/material.dart';

enum ItemsSource {
  generator,
  template,
  duplicatePreviosTrip,
  selectFromCatalog
}

class ItemsSourceSettings {
  String radioButtonLabel;
  String secondStepTitle;
  Route route;
  ItemsSourceSettings(this.radioButtonLabel, this.secondStepTitle, this.route);
}

var itemsSources = {
  ItemsSource.generator:ItemsSourceSettings('Generator', 'Generator', null),
  ItemsSource.template:ItemsSourceSettings('Template', 'by', null),
  ItemsSource.duplicatePreviosTrip:ItemsSourceSettings('Duplicate one of the previos trips', 'duplicate from', null),
  ItemsSource.selectFromCatalog:ItemsSourceSettings('Select from catalog', 'select from catalog', null),
};