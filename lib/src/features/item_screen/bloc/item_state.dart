part of 'item_bloc.dart';

@freezed
class ItemState with _$ItemState {
  const factory ItemState({
    @Default(ScreenStatus.initial) ScreenStatus status,
    @Default(<RepositoryList>[]) List<RepositoryList> items,
    @Default('') String errorMessage,
  }) = _ItemState;
}
