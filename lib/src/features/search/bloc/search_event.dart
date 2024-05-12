part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.onTyped(String query) = _OnTyped;
  const factory SearchEvent.onFollowersCountGet(int index) =
      _OnFollowersCountGet;
}
