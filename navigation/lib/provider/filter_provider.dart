import 'package:flutter_riverpod/flutter_riverpod.dart';


enum Filter { glutenFree, lactoseFree, vegatarian, vegan }

class FilterNotifier extends StateNotifier<Map<Filter, bool>> {
  FilterNotifier()
      : super({
          Filter.glutenFree: false,
          Filter.lactoseFree: false,
          Filter.vegatarian: false,
          Filter.vegan: false
        });
  void setFilters (Map<Filter, bool> chosenFilrers){
   state = chosenFilrers;
  }
  void setFilter(Filter filter, bool isActive) {
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filtersProvider =
    StateNotifierProvider<FilterNotifier, Map<Filter, bool>>(
  (ref) => FilterNotifier(),
);
