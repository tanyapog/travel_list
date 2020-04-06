import 'package:travel_list/models/trip.dart';
import 'package:travel_list/models/trip_category.dart';

class DbImitation {
  static final List<TripCategory> tripCategories = [
    TripCategory(1,'на самолёте'),
    TripCategory(2,'на поезде'),
    TripCategory(3,'на машине'),
    TripCategory(4,'метро'),
    TripCategory(5,'с Лёхой'),
    TripCategory(6,'с Настей'),
    TripCategory(7,'поход'),
    TripCategory(8,'лыжный поход'),
    TripCategory(9,'треккинг'),
    TripCategory(10,'скалолазание'),
    TripCategory(11,'альпинизм')];

  static List<Trip> trips = [
    Trip.fromNameAndDescription(1, 'Камчатка, август 2020', ''),
    Trip.fromNameAndDescription(2, 'Словения, июль 2019', '')
  ];
}