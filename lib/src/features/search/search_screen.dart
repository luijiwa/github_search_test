
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_test/src/core/components/rest_service.dart';
import 'package:github_search_test/src/features/search/bloc/search_bloc.dart';
import 'package:github_search_test/src/features/search/ui/search_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: BlocProvider(
        create: (context) => SearchBloc(
          restService: RepositoryProvider.of<RestService>(context),
        ),
        child: const SearchView(),
      ),
    );
  }
}
