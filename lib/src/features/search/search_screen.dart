import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
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
                onSubmitted: (value) {
                  //TODO: implement search logic
                },
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([]),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: width * 2,
            ),
          )
        ],
      )),
    );
  }
}
