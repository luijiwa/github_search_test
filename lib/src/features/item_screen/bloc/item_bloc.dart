import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_test/src/core/components/rest_service.dart';
import 'package:github_search_test/src/core/models/screen_status.dart';
import 'package:github_search_test/src/features/item_screen/models/repository_list.dart';

part 'item_event.dart';
part 'item_state.dart';
part 'item_bloc.freezed.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  ItemBloc({required RestService restService})
      : _restService = restService,
        super(const ItemState()) {
    on<_Started>(_onStarted);
  }
  final RestService _restService;

  Future<FutureOr<void>> _onStarted(
      _Started event, Emitter<ItemState> emit) async {
    emit(state.copyWith(status: ScreenStatus.loading));
    try {
      final repositoryList = await _restService.getListRepos(event.repoUrl);
      emit(state.copyWith(status: ScreenStatus.success, items: repositoryList));
    } catch (e) {
      log(e.toString());
      emit(state.copyWith(status: ScreenStatus.failure));
    }
  }
}
