import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:travel_list/application/navigation/nav_bloc.dart';

void main() {
  blocTest<NavBloc, NavState>(
    'Emits [NavState(selectedItem: NavItem.catalog)] when NavigateTo(NavItem.catalog) is added',
    build: () => NavBloc(),
    act: (bloc) async => bloc.add(const NavigateTo(NavItem.catalog)),
    expect: () => [isA<NavState>()],
    verify: (bloc) async {
      expect(bloc.state.selectedItem, NavItem.catalog);
  },);
}
