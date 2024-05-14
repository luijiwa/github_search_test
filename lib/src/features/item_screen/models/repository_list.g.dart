// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryListImpl _$$RepositoryListImplFromJson(Map<String, dynamic> json) =>
    _$RepositoryListImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      pushedAt: json['pushed_at'] as String? ?? '',
      stargazersCount: (json['stargazers_count'] as num?)?.toInt() ?? 0,
      watchersCount: (json['watchers_count'] as num?)?.toInt() ?? 0,
      language: json['language'] as String? ?? '',
      forksCount: (json['forks_count'] as num?)?.toInt() ?? 0,
      forks: (json['forks'] as num?)?.toInt() ?? 0,
      watchers: (json['watchers'] as num?)?.toInt() ?? 0,
      defaultBranch: json['default_branch'] as String? ?? '',
    );

Map<String, dynamic> _$$RepositoryListImplToJson(
        _$RepositoryListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'pushed_at': instance.pushedAt,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'language': instance.language,
      'forks_count': instance.forksCount,
      'forks': instance.forks,
      'watchers': instance.watchers,
      'default_branch': instance.defaultBranch,
    };
