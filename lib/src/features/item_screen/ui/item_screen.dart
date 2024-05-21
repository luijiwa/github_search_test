import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_test/src/core/components/rest_service.dart';
import 'package:github_search_test/src/features/item_screen/bloc/item_bloc.dart';
import 'package:github_search_test/src/features/item_screen/ui/item_view.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key, required this.repoUrl});
  final String repoUrl;

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  late final ItemBloc _itemBloc;
  @override
  void initState() {
    super.initState();
    _itemBloc =
        ItemBloc(restService: RepositoryProvider.of<RestService>(context));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _itemBloc..add(ItemEvent.started(widget.repoUrl)),
      child: const ItemView(),
    );
  }
}
