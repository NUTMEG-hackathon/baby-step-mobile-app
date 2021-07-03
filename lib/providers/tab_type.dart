import 'package:hooks_riverpod/hooks_riverpod.dart';

final tabTypeProvider = StateProvider<TabType>((ref) => TabType.main);

enum TabType {
  search,
  main,
  list
}