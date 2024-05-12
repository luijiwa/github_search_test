part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(ScreenStatus.initial) ScreenStatus status,
    @Default(<Items>[]) List<Items> items,
    @Default([]) List<int> followersCount,
    @Default('') String errorMessage,
  }) = _SearchState;
}
