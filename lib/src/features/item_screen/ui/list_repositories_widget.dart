import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_test/src/features/item_screen/bloc/item_bloc.dart';
import 'package:github_search_test/src/features/item_screen/ui/list_element_row_widget.dart';

class ListRepositoriesWidget extends StatelessWidget {
  const ListRepositoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final items = context.read<ItemBloc>().state.items;
    return SliverList.separated(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListElementRowWidget(index: index);
      },
      separatorBuilder: (_, __) => const Divider(),
    );
  }
}
