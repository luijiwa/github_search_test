import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_test/src/core/models/screen_status.dart';
import 'package:github_search_test/src/features/search/bloc/search_bloc.dart';

class SearchView extends StatefulWidget {
  const SearchView({
    super.key,
  });

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  late Timer _debounce;
  @override
  void initState() {
    _debounce = Timer(const Duration(seconds: 1), () {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        body: CustomScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      slivers: [
        const SliverAppBar(
          title: Text('GitHub юзерs'),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  label: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.search),
                      Text('Поиск'),
                    ],
                  ),
                ),
                onChanged: (query) {
                  _debounce.cancel();
                  _debounce = Timer(const Duration(seconds: 1), () {
                    // log('query: $query');
                    context.read<SearchBloc>().add(SearchEvent.onTyped(query));
                  });
                }),
          ),
        ),
        BlocBuilder<SearchBloc, SearchState>(
          buildWhen: (previous, current) => previous.status != current.status,
          builder: (context, state) {
            if (state.status.isInLoading) {
              return const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()),
              );
            }
            return const UsersListWidget();
          },
        ),
        SliverToBoxAdapter(
          child: Container(
            height: width * 2,
          ),
        )
      ],
    ));
  }
}

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
