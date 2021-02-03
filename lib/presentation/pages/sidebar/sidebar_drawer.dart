import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/auth/auth_bloc.dart';
import 'package:travel_list/presentation/routes/router.gr.dart';

class SidebarDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) => ExtendedNavigator.of(context)
              .replace(Routes.signInPage),
          orElse: () {},
        );
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.maybeMap(
            authenticated: (state) {
              final user = state.user;
              return Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      decoration: const BoxDecoration(color: Colors.lightGreen,),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: ListTile(
                          title: Text(user.name.value.fold((l) => null, id),
                            style: const TextStyle(color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w800),
                          ),
                          subtitle: Text(user.email.value.fold((l) => null, id),
                            style: const TextStyle(color: Colors.black,),
                          ),
                          leading: const CircleAvatar( // todo show google avatar image if any
                            backgroundColor: Colors.orangeAccent,
                            radius: 25,
                            child: Icon(Icons.perm_identity, color: Colors.white,),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                        leading: const Icon(Icons.exit_to_app),
                        title: const Text('Sign out'),
                        onTap: () {
                          context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
                        }
                    ),
                  ],
                ),
              );
            },
            orElse: () {return Container();},
          );
        }
      ),
    );
  }
}
