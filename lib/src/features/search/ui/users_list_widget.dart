import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_test/src/core/routing/app_routes.dart';
import 'package:github_search_test/src/features/search/bloc/search_bloc.dart';
import 'package:go_router/go_router.dart';

class UsersListWidget extends StatelessWidget {
  const UsersListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      sliver: BlocBuilder<SearchBloc, SearchState>(
        buildWhen: (previous, current) => previous.items != current.items,
        builder: (context, state) {
          return SliverList.separated(
            itemCount: state.items.length,
            itemBuilder: (context, index) {
              return Stack(children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage(state.items[index].avatarUrl),
                    ),
                    const SizedBox(width: 8),
                    Text(state.items[index].login),
                    const Spacer(),
                    BlocBuilder<SearchBloc, SearchState>(
                      buildWhen: (previous, current) =>
                          previous.items[index].followersCount !=
                          current.items[index].followersCount,
                      builder: (context, state) {
                        final followersCount =
                            state.items[index].followersCount;
                        if (followersCount == null) {
                          return const SizedBox(
                            width: 10,
                            height: 10,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                            ),
                          );
                        } else {
                          return Text(
                              state.items[index].followersCount.toString());
                        }
                      },
                    ),
                    const Icon(Icons.chevron_right),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        log(state.items[index].login);
                        context.goNamed(AppRoutes.item.name,
                            extra: state.items[index].reposUrl);
                      },
                    ),
                  ),
                )
              ]);
            },
            separatorBuilder: (__, _) => const SizedBox(height: 10),
          );
        },
      ),
    );
  }
}
