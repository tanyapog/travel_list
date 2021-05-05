part of 'nav_bloc.dart';

@freezed
abstract class NavEvent with _$NavEvent {
  const factory NavEvent.navigateTo(NavItem destination) = NavigateTo;
}
