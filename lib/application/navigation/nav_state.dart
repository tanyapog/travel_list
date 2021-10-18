part of 'nav_bloc.dart';

@freezed
class NavState with _$NavState {
  const factory NavState({required NavItem selectedItem}) = _NavState;
  factory NavState.initial() => const NavState(selectedItem: NavItem.trips);
  const factory NavState.selectItem({required NavItem selectedItem}) = SelectItem;
}

