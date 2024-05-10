// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersImpl _$$UsersImplFromJson(Map<String, dynamic> json) => _$UsersImpl(
      totalCount: (json['total_count'] as num?)?.toInt() ?? 0,
      incompleteResults: json['incomplete_results'] as bool? ?? false,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Items>[],
    );

Map<String, dynamic> _$$UsersImplToJson(_$UsersImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };

_$ItemsImpl _$$ItemsImplFromJson(Map<String, dynamic> json) => _$ItemsImpl(
      login: json['login'] as String?,
      id: (json['id'] as num?)?.toInt(),
      nodeId: json['node_id'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      gravatarId: json['gravatar_id'] as String?,
      url: json['url'] as String?,
      htmlUrl: json['html_url'] as String?,
      followersUrl: json['followers_url'] as String?,
      followingUrl: json['following_url'] as String?,
      gistsUrl: json['gists_url'] as String?,
      starredUrl: json['starred_url'] as String?,
      subscriptionsUrl: json['subscriptions_url'] as String?,
      organizationsUrl: json['organizations_url'] as String?,
      reposUrl: json['repos_url'] as String?,
      eventsUrl: json['events_url'] as String?,
      receivedEventsUrl: json['received_events_url'] as String?,
      type: json['type'] as String?,
      siteAdmin: json['site_admin'] as bool?,
      score: (json['score'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ItemsImplToJson(_$ItemsImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'node_id': instance.nodeId,
      'avatar_url': instance.avatarUrl,
      'gravatar_id': instance.gravatarId,
      'url': instance.url,
      'html_url': instance.htmlUrl,
      'followers_url': instance.followersUrl,
      'following_url': instance.followingUrl,
      'gists_url': instance.gistsUrl,
      'starred_url': instance.starredUrl,
      'subscriptions_url': instance.subscriptionsUrl,
      'organizations_url': instance.organizationsUrl,
      'repos_url': instance.reposUrl,
      'events_url': instance.eventsUrl,
      'received_events_url': instance.receivedEventsUrl,
      'type': instance.type,
      'site_admin': instance.siteAdmin,
      'score': instance.score,
    };
