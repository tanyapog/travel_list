import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/auth/auth_bloc.dart';
import 'package:travel_list/application/navigation/nav_bloc.dart';
import 'package:travel_list/domain/auth/user.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/routes/router.gr.dart';

class NavigationDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavBloc>(
      create: (navContext) => getIt<NavBloc>(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (authContext, authState) => authState.maybeMap(
              unauthenticated: (_) => AutoRouter.of(authContext).replace(const SignInRoute()),
              orElse: () => Container(),
            ),
          ),
          BlocListener<NavBloc, NavState>(
            listener: (navContext, navState) {
              switch(navState.selectedItem) {
                case NavItem.currentTrip:
                  debugPrint("--- show Current trip");
                  break;
                case NavItem.generator:
                  AutoRouter.of(context).replace(const GeneratorRoute());
                  break;
                case NavItem.trips:
                  AutoRouter.of(context).replace(const TripsOverviewRoute());
                  break;
                case NavItem.catalog:
                  debugPrint("--- show Catalog");
                  break;
                case NavItem.categories:
                  AutoRouter.of(context).replace(const CategoriesOverviewRoute());
                  break;
                case NavItem.templates:
                  debugPrint("--- show Templates");
                  break;
                case NavItem.settings:
                  debugPrint("--- show Settings");
                  break;
                case NavItem.signOut:
                  context.read<AuthBloc>().add(const AuthEvent.signedOut());
                  break;
              }
            },
          ),
        ],
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (authContext, authState) => authState.maybeMap(
            authenticated: (authState) => Drawer(
              child: BlocBuilder<NavBloc, NavState>(
                builder: (navContext, navState) => ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    _createDrawerHeader(authState.user),
                    _createDrawerBodyItem(NavItem.currentTrip, 'Current trip', Icons.airplanemode_active, navContext, navState),
                    _createDrawerBodyItem(NavItem.generator, 'Generate new list', Icons.add, navContext, navState),
                    const Divider(height: 1, thickness: 1),
                    _createDrawerBodyItem(NavItem.trips, 'Trips', Icons.menu, navContext, navState),
                    _createDrawerBodyItem(NavItem.catalog, 'Catalog', Icons.folder, navContext, navState),
                    _createDrawerBodyItem(NavItem.categories, 'Categories', Icons.category, navContext, navState),
                    _createDrawerBodyItem(NavItem.templates, 'Templates', Icons.account_balance, navContext, navState),
                    const Divider(height: 1, thickness: 1),
                    _createDrawerBodyItem(NavItem.settings, 'Settings', Icons.settings, navContext, navState),
                    _createDrawerBodyItem(NavItem.signOut, 'Sign out', Icons.exit_to_app, navContext, navState),
                  ],
                ),
              ),
            ),
            orElse: () => Container(),
          ),
        ),
      ),
    );
  }

  Widget _createDrawerHeader(User user) =>
      UserAccountsDrawerHeader(
        // empty email or name is impossible situation in TravelList, but ValueObjects made it unclear. I going to get rid of them in #17
        accountName: Text(
          user.name.value.fold((l) => "noName", id),
          style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800),
        ),
        accountEmail: Text(
          user.email.value.fold((l) => "noEmail", id),
          style: const TextStyle(color: Colors.black),
        ),
        decoration: const BoxDecoration(color: Colors.lightGreen),
        currentAccountPicture: const CircleAvatar(
          backgroundColor: Colors.orangeAccent,
          foregroundColor: Colors.amber,
          radius: 25,
          child: Icon(Icons.person, color: Colors.white, size: 50),
        ),
      );

  Widget _createDrawerBodyItem(
      NavItem item,
      String title,
      IconData icon,
      BuildContext navContext,
      NavState navState) {

    final bool isSelected = item == navState.selectedItem;
    return Card(
      color: isSelected ? Colors.lightGreen : Colors.white,
      shape: const ContinuousRectangleBorder(),
      elevation: 0,
      margin: EdgeInsets.zero,
      child: Builder(
        builder: (BuildContext context) => ListTile(
          title: Text(title, style: TextStyle(color: _getColor(isSelected))),
          leading: Icon(icon, color: _getColor(isSelected)),
          onTap: () {
            navContext.read<NavBloc>().add(NavigateTo(item));
            Navigator.pop(navContext);
          },
        ),
      ),
    );
  }

  Color _getColor(bool selected) => selected ? Colors.white : Colors.blueGrey;
}
