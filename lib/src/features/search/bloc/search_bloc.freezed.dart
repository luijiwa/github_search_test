// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnTyped value) onTyped,
    required TResult Function(_OnFollowersCountGet value) onFollowersCountGet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnTyped value)? onTyped,
    TResult? Function(_OnFollowersCountGet value)? onFollowersCountGet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnTyped value)? onTyped,
    TResult Function(_OnFollowersCountGet value)? onFollowersCountGet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnTypedImplCopyWith<$Res> {
  factory _$$OnTypedImplCopyWith(
          _$OnTypedImpl value, $Res Function(_$OnTypedImpl) then) =
      __$$OnTypedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$OnTypedImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$OnTypedImpl>
    implements _$$OnTypedImplCopyWith<$Res> {
  __$$OnTypedImplCopyWithImpl(
      _$OnTypedImpl _value, $Res Function(_$OnTypedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$OnTypedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnTypedImpl implements _OnTyped {
  const _$OnTypedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.onTyped(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTypedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTypedImplCopyWith<_$OnTypedImpl> get copyWith =>
      __$$OnTypedImplCopyWithImpl<_$OnTypedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnTyped value) onTyped,
    required TResult Function(_OnFollowersCountGet value) onFollowersCountGet,
  }) {
    return onTyped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnTyped value)? onTyped,
    TResult? Function(_OnFollowersCountGet value)? onFollowersCountGet,
  }) {
    return onTyped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnTyped value)? onTyped,
    TResult Function(_OnFollowersCountGet value)? onFollowersCountGet,
    required TResult orElse(),
  }) {
    if (onTyped != null) {
      return onTyped(this);
    }
    return orElse();
  }
}

abstract class _OnTyped implements SearchEvent {
  const factory _OnTyped(final String query) = _$OnTypedImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$OnTypedImplCopyWith<_$OnTypedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnFollowersCountGetImplCopyWith<$Res> {
  factory _$$OnFollowersCountGetImplCopyWith(_$OnFollowersCountGetImpl value,
          $Res Function(_$OnFollowersCountGetImpl) then) =
      __$$OnFollowersCountGetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$OnFollowersCountGetImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$OnFollowersCountGetImpl>
    implements _$$OnFollowersCountGetImplCopyWith<$Res> {
  __$$OnFollowersCountGetImplCopyWithImpl(_$OnFollowersCountGetImpl _value,
      $Res Function(_$OnFollowersCountGetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$OnFollowersCountGetImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnFollowersCountGetImpl implements _OnFollowersCountGet {
  const _$OnFollowersCountGetImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'SearchEvent.onFollowersCountGet(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnFollowersCountGetImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnFollowersCountGetImplCopyWith<_$OnFollowersCountGetImpl> get copyWith =>
      __$$OnFollowersCountGetImplCopyWithImpl<_$OnFollowersCountGetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnTyped value) onTyped,
    required TResult Function(_OnFollowersCountGet value) onFollowersCountGet,
  }) {
    return onFollowersCountGet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnTyped value)? onTyped,
    TResult? Function(_OnFollowersCountGet value)? onFollowersCountGet,
  }) {
    return onFollowersCountGet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnTyped value)? onTyped,
    TResult Function(_OnFollowersCountGet value)? onFollowersCountGet,
    required TResult orElse(),
  }) {
    if (onFollowersCountGet != null) {
      return onFollowersCountGet(this);
    }
    return orElse();
  }
}

abstract class _OnFollowersCountGet implements SearchEvent {
  const factory _OnFollowersCountGet(final int index) =
      _$OnFollowersCountGetImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$OnFollowersCountGetImplCopyWith<_$OnFollowersCountGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  ScreenStatus get status => throw _privateConstructorUsedError;
  List<Items> get items => throw _privateConstructorUsedError;
  List<int> get followersCount => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {ScreenStatus status,
      List<Items> items,
      List<int> followersCount,
      String errorMessage});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
    Object? followersCount = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as List<int>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScreenStatus status,
      List<Items> items,
      List<int> followersCount,
      String errorMessage});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
    Object? followersCount = null,
    Object? errorMessage = null,
  }) {
    return _then(_$SearchStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
      followersCount: null == followersCount
          ? _value._followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as List<int>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {this.status = ScreenStatus.initial,
      final List<Items> items = const <Items>[],
      final List<int> followersCount = const [],
      this.errorMessage = ''})
      : _items = items,
        _followersCount = followersCount;

  @override
  @JsonKey()
  final ScreenStatus status;
  final List<Items> _items;
  @override
  @JsonKey()
  List<Items> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<int> _followersCount;
  @override
  @JsonKey()
  List<int> get followersCount {
    if (_followersCount is EqualUnmodifiableListView) return _followersCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followersCount);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'SearchState(status: $status, items: $items, followersCount: $followersCount, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._followersCount, _followersCount) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_followersCount),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {final ScreenStatus status,
      final List<Items> items,
      final List<int> followersCount,
      final String errorMessage}) = _$SearchStateImpl;

  @override
  ScreenStatus get status;
  @override
  List<Items> get items;
  @override
  List<int> get followersCount;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
