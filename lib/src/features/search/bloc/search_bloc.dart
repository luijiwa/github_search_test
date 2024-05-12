import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_test/src/core/components/rest_service.dart';
import 'package:github_search_test/src/core/models/screen_status.dart';
import 'package:github_search_test/src/features/search/models/users.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({required RestService restService})
      : _restService = restService,
        super(const SearchState()) {
    on<_OnTyped>(_onTyped);
    // on<_OnFollowersCountGet>(_onFollowersCountGet);
  }
  final RestService _restService;

  Future<void> _onTyped(_OnTyped event, Emitter<SearchState> emit) async {
    if (state.status.isInLoading) return;
    emit(state.copyWith(status: ScreenStatus.loading));

    try {
      final users = await _restService.getUsers(event.query, '1');
      final itemsList = users.items;
      emit(state.copyWith(
        status: ScreenStatus.success,
        items: itemsList,
      ));
      for (var i = 0; i < itemsList.length; i++) {
        final followersCount =
            await _restService.getFollowersCount(users.items[i].followersUrl);
        final updatedItem =
            itemsList[i].copyWith(followersCount: followersCount);
        emit(state.copyWith(
          items: [...state.items]..[i] = updatedItem,
        ));
      }
    } catch (e, stackTrace) {
      emit(state.copyWith(status: ScreenStatus.failure));
    }
  }
}
