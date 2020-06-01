import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/auth/auth_bloc.dart';
import 'package:travel_list/presentation/routes/router.gr.dart';

class SidebarDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.lightGreen,),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ListTile(
                    title: Text("stub user name",
                      style: TextStyle(color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text("stub@test.com",// user.email.value.fold((l) => null, (r) => r),
                      style: TextStyle(color: Colors.black,),
                    ),
                    leading: CircleAvatar( // todo show google avatar image if any
                      backgroundColor: Colors.orangeAccent,
                      radius: 25,
                      child: Icon(Icons.perm_identity, color: Colors.white,),
                    ),
                  ),
                ),
              ),
              ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: const Text('Sign out'),
                  onTap: () {
                    context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
                    ExtendedNavigator.of(context).pushReplacementNamed(Routes.signInPage);
                  }
              ),
            ],
          ),
        );
      }
    );
  }
}
