import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_test/src/features/item_screen/bloc/item_bloc.dart';

class ListElementRowWidget extends StatelessWidget {
  const ListElementRowWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final items = BlocProvider.of<ItemBloc>(context).state.items;
    final item = items[index];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        // При клике на элемент списка переходим  на экран на котором отображается список репозиториев этого пользователя. Элемент списка должен состоять из имени репозитория, описания, дата последнего коммита, ветка по умолчанию, количество форков, звезд, ЯП исходного кода проекта.

        children: [
          const CircleAvatar(
            backgroundColor: Colors.amber,
            maxRadius: 10,
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    item.name,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  if (item.description.isNotEmpty)
                    Text(
                      item.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                ],
              ),
              Row(
                children: [
                  Text(
                    item.language,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const VerticalDivider(),
                  const Icon(Icons.fork_right_outlined),
                  Text(
                    item.forksCount.toString(),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const VerticalDivider(),
                  const Icon(Icons.code_outlined),
                  Text(
                    item.defaultBranch,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          const Icon(Icons.star_border_outlined),
          Text(
            item.stargazersCount.toString(),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
