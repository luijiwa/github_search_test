import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_test/src/core/models/screen_status.dart';
import 'package:github_search_test/src/features/search/bloc/search_bloc.dart';
import 'package:github_search_test/src/features/search/ui/users_list_widget.dart';

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
