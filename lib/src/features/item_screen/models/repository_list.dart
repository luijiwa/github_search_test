import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_list.freezed.dart';
part 'repository_list.g.dart';

@freezed
class RepositoryList with _$RepositoryList {
  const factory RepositoryList({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String description,
    @Default('') String createdAt,
    @Default('') String updatedAt,
    @Default('') String pushedAt,
    @Default(0) int stargazersCount,
    @Default(0) int watchersCount,
    @Default('') String language,
    @Default(0) int forksCount,
    @Default(0) int forks,
    @Default(0) int watchers,
    @Default('') String defaultBranch,
  }) = _RepositoryList;
  factory RepositoryList.fromJson(Map<String, Object?> json) =>
      _$RepositoryListFromJson(json);
}
