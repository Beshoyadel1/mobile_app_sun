import '../../models/search_result_model.dart';

abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchLoaded extends SearchState {
  final List<SearchResultModel> results;
  SearchLoaded(this.results);
}

class SearchEmpty extends SearchState {}