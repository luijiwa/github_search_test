import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_test/src/core/components/rest_service.dart';
import 'package:github_search_test/src/core/models/screen_status.dart';
import 'package:github_search_test/src/features/item_screen/bloc/item_bloc.dart';
import 'package:github_search_test/src/features/item_screen/ui/list_element_row_widget.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key, required this.repoUrl});
  final String repoUrl;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ItemBloc(restService: RepositoryProvider.of<RestService>(context))
            ..add(ItemEvent.started(repoUrl)),
      child: const ItemView(),
    );
  }
}

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
                  return SliverList.separated(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListElementRowWidget(index: index);
                    },
                    separatorBuilder: (_, __) => const Divider(),
                  );
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
