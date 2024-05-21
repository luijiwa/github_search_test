import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_test/src/core/models/screen_status.dart';
import 'package:github_search_test/src/features/item_screen/bloc/item_bloc.dart';
import 'package:github_search_test/src/features/item_screen/ui/list_repositories_widget.dart';

class ItemView extends StatelessWidget {
  const ItemView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ItemBloc>(context);
    final state = bloc.state;
    final items = state.items;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text(''),
        ),
        BlocBuilder<ItemBloc, ItemState>(
            buildWhen: (previous, current) => previous.status != current.status,
            builder: (context, state) {
              switch (state.status) {
                case ScreenStatus.loading:
                  return const SliverFillRemaining(
                    child: Center(
                      child: SizedBox(
                          height: 50,
                          width: 50,
                          child: CircularProgressIndicator()),
                    ),
                  );

                case ScreenStatus.success:
                  return const ListRepositoriesWidget();
                case ScreenStatus.empty:
                  return const SliverFillRemaining(
                    child: Center(child: Text('Пусто')),
                  );
                default:
                  return const SliverFillRemaining(
                    child: Text('Непредвиденная ошибка'),
                  );
              }
            }),
        const SliverPadding(padding: EdgeInsets.only(bottom: 20)),
        SliverPadding(
            padding:
                EdgeInsets.only(bottom: MediaQuery.paddingOf(context).bottom)),
      ],
    ));
  }
}
