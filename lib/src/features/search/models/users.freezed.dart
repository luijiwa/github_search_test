// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Users _$UsersFromJson(Map<String, dynamic> json) {
  return _Users.fromJson(json);
}

/// @nodoc
mixin _$Users {
  int get totalCount => throw _privateConstructorUsedError;
  bool get incompleteResults => throw _privateConstructorUsedError;
  List<Items> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersCopyWith<Users> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersCopyWith<$Res> {
  factory $UsersCopyWith(Users value, $Res Function(Users) then) =
      _$UsersCopyWithImpl<$Res, Users>;
  @useResult
  $Res call({int totalCount, bool incompleteResults, List<Items> items});
}

/// @nodoc
class _$UsersCopyWithImpl<$Res, $Val extends Users>
    implements $UsersCopyWith<$Res> {
  _$UsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersImplCopyWith<$Res> implements $UsersCopyWith<$Res> {
  factory _$$UsersImplCopyWith(
          _$UsersImpl value, $Res Function(_$UsersImpl) then) =
      __$$UsersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalCount, bool incompleteResults, List<Items> items});
}

/// @nodoc
class __$$UsersImplCopyWithImpl<$Res>
    extends _$UsersCopyWithImpl<$Res, _$UsersImpl>
    implements _$$UsersImplCopyWith<$Res> {
  __$$UsersImplCopyWithImpl(
      _$UsersImpl _value, $Res Function(_$UsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_$UsersImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersImpl with DiagnosticableTreeMixin implements _Users {
  const _$UsersImpl(
      {this.totalCount = 0,
      this.incompleteResults = false,
      final List<Items> items = const <Items>[]})
      : _items = items;

  factory _$UsersImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersImplFromJson(json);

  @override
  @JsonKey()
  final int totalCount;
  @override
  @JsonKey()
  final bool incompleteResults;
  final List<Items> _items;
  @override
  @JsonKey()
  List<Items> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Users(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Users'))
      ..add(DiagnosticsProperty('totalCount', totalCount))
      ..add(DiagnosticsProperty('incompleteResults', incompleteResults))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.incompleteResults, incompleteResults) ||
                other.incompleteResults == incompleteResults) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, incompleteResults,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersImplCopyWith<_$UsersImpl> get copyWith =>
      __$$UsersImplCopyWithImpl<_$UsersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersImplToJson(
      this,
    );
  }
}

abstract class _Users implements Users {
  const factory _Users(
      {final int totalCount,
      final bool incompleteResults,
      final List<Items> items}) = _$UsersImpl;

  factory _Users.fromJson(Map<String, dynamic> json) = _$UsersImpl.fromJson;

  @override
  int get totalCount;
  @override
  bool get incompleteResults;
  @override
  List<Items> get items;
  @override
  @JsonKey(ignore: true)
  _$$UsersImplCopyWith<_$UsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return _Items.fromJson(json);
}

/// @nodoc
mixin _$Items {
  String get login => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String? get nodeId => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String? get gravatarId => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get htmlUrl => throw _privateConstructorUsedError;
  String get followersUrl => throw _privateConstructorUsedError;
  ScreenStatus get followersCountStatus => throw _privateConstructorUsedError;
  int? get followersCount => throw _privateConstructorUsedError;
  String? get followingUrl => throw _privateConstructorUsedError;
  String? get gistsUrl => throw _privateConstructorUsedError;
  String? get starredUrl => throw _privateConstructorUsedError;
  String? get subscriptionsUrl => throw _privateConstructorUsedError;
  String? get organizationsUrl => throw _privateConstructorUsedError;
  String? get reposUrl => throw _privateConstructorUsedError;
  String? get eventsUrl => throw _privateConstructorUsedError;
  String? get receivedEventsUrl => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool? get siteAdmin => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsCopyWith<Items> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsCopyWith<$Res> {
  factory $ItemsCopyWith(Items value, $Res Function(Items) then) =
      _$ItemsCopyWithImpl<$Res, Items>;
  @useResult
  $Res call(
      {String login,
      int id,
      String? nodeId,
      String avatarUrl,
      String? gravatarId,
      String? url,
      String? htmlUrl,
      String followersUrl,
      ScreenStatus followersCountStatus,
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
      int? score});
}

/// @nodoc
class _$ItemsCopyWithImpl<$Res, $Val extends Items>
    implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? id = null,
    Object? nodeId = freezed,
    Object? avatarUrl = null,
    Object? gravatarId = freezed,
    Object? url = freezed,
    Object? htmlUrl = freezed,
    Object? followersUrl = null,
    Object? followersCountStatus = null,
    Object? followersCount = freezed,
    Object? followingUrl = freezed,
    Object? gistsUrl = freezed,
    Object? starredUrl = freezed,
    Object? subscriptionsUrl = freezed,
    Object? organizationsUrl = freezed,
    Object? reposUrl = freezed,
    Object? eventsUrl = freezed,
    Object? receivedEventsUrl = freezed,
    Object? type = freezed,
    Object? siteAdmin = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: freezed == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gravatarId: freezed == gravatarId
          ? _value.gravatarId
          : gravatarId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      followersUrl: null == followersUrl
          ? _value.followersUrl
          : followersUrl // ignore: cast_nullable_to_non_nullable
              as String,
      followersCountStatus: null == followersCountStatus
          ? _value.followersCountStatus
          : followersCountStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      followersCount: freezed == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followingUrl: freezed == followingUrl
          ? _value.followingUrl
          : followingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gistsUrl: freezed == gistsUrl
          ? _value.gistsUrl
          : gistsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      starredUrl: freezed == starredUrl
          ? _value.starredUrl
          : starredUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionsUrl: freezed == subscriptionsUrl
          ? _value.subscriptionsUrl
          : subscriptionsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationsUrl: freezed == organizationsUrl
          ? _value.organizationsUrl
          : organizationsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      reposUrl: freezed == reposUrl
          ? _value.reposUrl
          : reposUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      eventsUrl: freezed == eventsUrl
          ? _value.eventsUrl
          : eventsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedEventsUrl: freezed == receivedEventsUrl
          ? _value.receivedEventsUrl
          : receivedEventsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      siteAdmin: freezed == siteAdmin
          ? _value.siteAdmin
          : siteAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemsImplCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$$ItemsImplCopyWith(
          _$ItemsImpl value, $Res Function(_$ItemsImpl) then) =
      __$$ItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String login,
      int id,
      String? nodeId,
      String avatarUrl,
      String? gravatarId,
      String? url,
      String? htmlUrl,
      String followersUrl,
      ScreenStatus followersCountStatus,
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
      int? score});
}

/// @nodoc
class __$$ItemsImplCopyWithImpl<$Res>
    extends _$ItemsCopyWithImpl<$Res, _$ItemsImpl>
    implements _$$ItemsImplCopyWith<$Res> {
  __$$ItemsImplCopyWithImpl(
      _$ItemsImpl _value, $Res Function(_$ItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? id = null,
    Object? nodeId = freezed,
    Object? avatarUrl = null,
    Object? gravatarId = freezed,
    Object? url = freezed,
    Object? htmlUrl = freezed,
    Object? followersUrl = null,
    Object? followersCountStatus = null,
    Object? followersCount = freezed,
    Object? followingUrl = freezed,
    Object? gistsUrl = freezed,
    Object? starredUrl = freezed,
    Object? subscriptionsUrl = freezed,
    Object? organizationsUrl = freezed,
    Object? reposUrl = freezed,
    Object? eventsUrl = freezed,
    Object? receivedEventsUrl = freezed,
    Object? type = freezed,
    Object? siteAdmin = freezed,
    Object? score = freezed,
  }) {
    return _then(_$ItemsImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: freezed == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gravatarId: freezed == gravatarId
          ? _value.gravatarId
          : gravatarId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      followersUrl: null == followersUrl
          ? _value.followersUrl
          : followersUrl // ignore: cast_nullable_to_non_nullable
              as String,
      followersCountStatus: null == followersCountStatus
          ? _value.followersCountStatus
          : followersCountStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      followersCount: freezed == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followingUrl: freezed == followingUrl
          ? _value.followingUrl
          : followingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gistsUrl: freezed == gistsUrl
          ? _value.gistsUrl
          : gistsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      starredUrl: freezed == starredUrl
          ? _value.starredUrl
          : starredUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionsUrl: freezed == subscriptionsUrl
          ? _value.subscriptionsUrl
          : subscriptionsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationsUrl: freezed == organizationsUrl
          ? _value.organizationsUrl
          : organizationsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      reposUrl: freezed == reposUrl
          ? _value.reposUrl
          : reposUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      eventsUrl: freezed == eventsUrl
          ? _value.eventsUrl
          : eventsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedEventsUrl: freezed == receivedEventsUrl
          ? _value.receivedEventsUrl
          : receivedEventsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      siteAdmin: freezed == siteAdmin
          ? _value.siteAdmin
          : siteAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemsImpl with DiagnosticableTreeMixin implements _Items {
  const _$ItemsImpl(
      {this.login = '',
      this.id = 0,
      this.nodeId,
      this.avatarUrl = '',
      this.gravatarId,
      this.url,
      this.htmlUrl,
      this.followersUrl = '',
      this.followersCountStatus = ScreenStatus.initial,
      this.followersCount,
      this.followingUrl,
      this.gistsUrl,
      this.starredUrl,
      this.subscriptionsUrl,
      this.organizationsUrl,
      this.reposUrl,
      this.eventsUrl,
      this.receivedEventsUrl,
      this.type,
      this.siteAdmin,
      this.score});

  factory _$ItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsImplFromJson(json);

  @override
  @JsonKey()
  final String login;
  @override
  @JsonKey()
  final int id;
  @override
  final String? nodeId;
  @override
  @JsonKey()
  final String avatarUrl;
  @override
  final String? gravatarId;
  @override
  final String? url;
  @override
  final String? htmlUrl;
  @override
  @JsonKey()
  final String followersUrl;
  @override
  @JsonKey()
  final ScreenStatus followersCountStatus;
  @override
  final int? followersCount;
  @override
  final String? followingUrl;
  @override
  final String? gistsUrl;
  @override
  final String? starredUrl;
  @override
  final String? subscriptionsUrl;
  @override
  final String? organizationsUrl;
  @override
  final String? reposUrl;
  @override
  final String? eventsUrl;
  @override
  final String? receivedEventsUrl;
  @override
  final String? type;
  @override
  final bool? siteAdmin;
  @override
  final int? score;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Items(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, gravatarId: $gravatarId, url: $url, htmlUrl: $htmlUrl, followersUrl: $followersUrl, followersCountStatus: $followersCountStatus, followersCount: $followersCount, followingUrl: $followingUrl, gistsUrl: $gistsUrl, starredUrl: $starredUrl, subscriptionsUrl: $subscriptionsUrl, organizationsUrl: $organizationsUrl, reposUrl: $reposUrl, eventsUrl: $eventsUrl, receivedEventsUrl: $receivedEventsUrl, type: $type, siteAdmin: $siteAdmin, score: $score)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Items'))
      ..add(DiagnosticsProperty('login', login))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('nodeId', nodeId))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl))
      ..add(DiagnosticsProperty('gravatarId', gravatarId))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('htmlUrl', htmlUrl))
      ..add(DiagnosticsProperty('followersUrl', followersUrl))
      ..add(DiagnosticsProperty('followersCountStatus', followersCountStatus))
      ..add(DiagnosticsProperty('followersCount', followersCount))
      ..add(DiagnosticsProperty('followingUrl', followingUrl))
      ..add(DiagnosticsProperty('gistsUrl', gistsUrl))
      ..add(DiagnosticsProperty('starredUrl', starredUrl))
      ..add(DiagnosticsProperty('subscriptionsUrl', subscriptionsUrl))
      ..add(DiagnosticsProperty('organizationsUrl', organizationsUrl))
      ..add(DiagnosticsProperty('reposUrl', reposUrl))
      ..add(DiagnosticsProperty('eventsUrl', eventsUrl))
      ..add(DiagnosticsProperty('receivedEventsUrl', receivedEventsUrl))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('siteAdmin', siteAdmin))
      ..add(DiagnosticsProperty('score', score));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.gravatarId, gravatarId) ||
                other.gravatarId == gravatarId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.followersUrl, followersUrl) ||
                other.followersUrl == followersUrl) &&
            (identical(other.followersCountStatus, followersCountStatus) ||
                other.followersCountStatus == followersCountStatus) &&
            (identical(other.followersCount, followersCount) ||
                other.followersCount == followersCount) &&
            (identical(other.followingUrl, followingUrl) ||
                other.followingUrl == followingUrl) &&
            (identical(other.gistsUrl, gistsUrl) ||
                other.gistsUrl == gistsUrl) &&
            (identical(other.starredUrl, starredUrl) ||
                other.starredUrl == starredUrl) &&
            (identical(other.subscriptionsUrl, subscriptionsUrl) ||
                other.subscriptionsUrl == subscriptionsUrl) &&
            (identical(other.organizationsUrl, organizationsUrl) ||
                other.organizationsUrl == organizationsUrl) &&
            (identical(other.reposUrl, reposUrl) ||
                other.reposUrl == reposUrl) &&
            (identical(other.eventsUrl, eventsUrl) ||
                other.eventsUrl == eventsUrl) &&
            (identical(other.receivedEventsUrl, receivedEventsUrl) ||
                other.receivedEventsUrl == receivedEventsUrl) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.siteAdmin, siteAdmin) ||
                other.siteAdmin == siteAdmin) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        login,
        id,
        nodeId,
        avatarUrl,
        gravatarId,
        url,
        htmlUrl,
        followersUrl,
        followersCountStatus,
        followersCount,
        followingUrl,
        gistsUrl,
        starredUrl,
        subscriptionsUrl,
        organizationsUrl,
        reposUrl,
        eventsUrl,
        receivedEventsUrl,
        type,
        siteAdmin,
        score
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsImplCopyWith<_$ItemsImpl> get copyWith =>
      __$$ItemsImplCopyWithImpl<_$ItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsImplToJson(
      this,
    );
  }
}

abstract class _Items implements Items {
  const factory _Items(
      {final String login,
      final int id,
      final String? nodeId,
      final String avatarUrl,
      final String? gravatarId,
      final String? url,
      final String? htmlUrl,
      final String followersUrl,
      final ScreenStatus followersCountStatus,
      final int? followersCount,
      final String? followingUrl,
      final String? gistsUrl,
      final String? starredUrl,
      final String? subscriptionsUrl,
      final String? organizationsUrl,
      final String? reposUrl,
      final String? eventsUrl,
      final String? receivedEventsUrl,
      final String? type,
      final bool? siteAdmin,
      final int? score}) = _$ItemsImpl;

  factory _Items.fromJson(Map<String, dynamic> json) = _$ItemsImpl.fromJson;

  @override
  String get login;
  @override
  int get id;
  @override
  String? get nodeId;
  @override
  String get avatarUrl;
  @override
  String? get gravatarId;
  @override
  String? get url;
  @override
  String? get htmlUrl;
  @override
  String get followersUrl;
  @override
  ScreenStatus get followersCountStatus;
  @override
  int? get followersCount;
  @override
  String? get followingUrl;
  @override
  String? get gistsUrl;
  @override
  String? get starredUrl;
  @override
  String? get subscriptionsUrl;
  @override
  String? get organizationsUrl;
  @override
  String? get reposUrl;
  @override
  String? get eventsUrl;
  @override
  String? get receivedEventsUrl;
  @override
  String? get type;
  @override
  bool? get siteAdmin;
  @override
  int? get score;
  @override
  @JsonKey(ignore: true)
  _$$ItemsImplCopyWith<_$ItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
