import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_test/src/features/app/models/screen_status.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState()) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<SearchState> emit) {}
}
