import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:github_search_test/src/core/models/screen_status.dart';
part 'users.freezed.dart';
part 'users.g.dart';

@freezed
class Users with _$Users {
  const factory Users({
    @Default(0) int totalCount,
    @Default(false) bool incompleteResults,
    @Default(<Items>[]) List<Items> items,
  }) = _Users;

  factory Users.fromJson(Map<String, Object?> json) => _$UsersFromJson(json);
}

@freezed
class Items with _$Items {
  const factory Items({
    @Default('') String login,
    @Default(0) int id,
    String? nodeId,
    @Default('') String avatarUrl,
    String? gravatarId,
    String? url,
    String? htmlUrl,
    @Default('') String followersUrl,
    @Default(ScreenStatus.initial) ScreenStatus followersCountStatus,
    int? followersCount,
    String? followingUrl,
    String? gistsUrl,
    String? starredUrl,
    String? subscriptionsUrl,
    String? organizationsUrl,
    String? reposUrl,
    String? eventsUrl,
    String? receivedEventsUrl,
    String? type,
    bool? siteAdmin,
    int? score,
  }) = _Items;

  factory Items.fromJson(Map<String, Object?> json) => _$ItemsFromJson(json);
}
