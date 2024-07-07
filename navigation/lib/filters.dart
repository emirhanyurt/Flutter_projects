import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navigation/provider/filter_provider.dart';




class FiltersScreen extends ConsumerStatefulWidget {
  const FiltersScreen({super.key,required this.currentFilters});

final Map<Filter,bool> currentFilters;
  @override
  ConsumerState<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends ConsumerState<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegatarianFilterSet = false;
  var _veganFilterSet = false;
  @override
  void initState() {

    super.initState();
    _glutenFreeFilterSet = widget.currentFilters[Filter.glutenFree]!;
    _lactoseFreeFilterSet = widget.currentFilters[Filter.lactoseFree]!;
    _vegatarianFilterSet = widget.currentFilters[Filter.vegatarian]!;
    _veganFilterSet = widget.currentFilters[Filter.vegan]!;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filtreler'),
      ),
      
      body: PopScope(
         canPop: false,
  onPopInvoked: (bool didPop) {
    if(didPop) return;
    Navigator.of(context).pop({
      Filter.glutenFree: _glutenFreeFilterSet,
      Filter.lactoseFree: _lactoseFreeFilterSet,
      Filter.vegatarian: _vegatarianFilterSet,
      Filter.vegan: _veganFilterSet,
    });
  },
        child: Column(
          children: [
            SwitchListTile(
              value: _glutenFreeFilterSet,
              onChanged: (isChacked) {
                setState(() {
                  _glutenFreeFilterSet = isChacked;
                });
              },
              title: Text('Glütensiz',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      )),
              subtitle: Text('Yalnızca glutensiz yiyecekleri dahil edin.',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      )),
                      activeColor: Theme.of(context).colorScheme.tertiary,
                      contentPadding: const EdgeInsets.only(left: 34,right: 22),
            ),
            ///////////
            SwitchListTile(
              value: _lactoseFreeFilterSet,
              onChanged: (isChacked) {
                setState(() {
                  _lactoseFreeFilterSet = isChacked;
                });
              },
              title: Text('Laktozsuz',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      )),
              subtitle: Text('alnızca laktoz içermeyen yemekleri dahil edin.',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      )),
                      activeColor: Theme.of(context).colorScheme.tertiary,
                      contentPadding: const EdgeInsets.only(left: 34,right: 22),
            ),
            ////////
            SwitchListTile(
              value: _vegatarianFilterSet,
              onChanged: (isChacked) {
                setState(() {
                  _vegatarianFilterSet = isChacked;
                });
              },
              title: Text('Vejetaryen',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      )),
              subtitle: Text('Yalnızca Vejetaryen yemekleri içerir.',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      )),
                      activeColor: Theme.of(context).colorScheme.tertiary,
                      contentPadding: const EdgeInsets.only(left: 34,right: 22),
            ),
            ////////
            SwitchListTile(
              value: _veganFilterSet,
              onChanged: (isChacked) {
                setState(() {
                  _veganFilterSet = isChacked;
                });
              },
              title: Text('Vegan',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      )),
              subtitle: Text('Yalnızca Vegan yemekleri içerir.',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      )),
                      activeColor: Theme.of(context).colorScheme.tertiary,
                      contentPadding: const EdgeInsets.only(left: 34,right: 22),
            ),
          ],
        ),
      ),
    );
  }
}
