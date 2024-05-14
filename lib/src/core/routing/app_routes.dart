enum AppRoutes {
  search(
    name: 'search',
    path: '/',
  ),

  item(
    name: 'item',
    path: 'item',
  ),
  ;

  const AppRoutes({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;

  @override
  String toString() => name;
}
