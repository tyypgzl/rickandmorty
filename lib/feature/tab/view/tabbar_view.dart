import 'package:flutter/material.dart';
import 'package:rickandmorty/feature/character/view/character_view.dart';
import 'package:rickandmorty/feature/episode/view/episode_view.dart';
import 'package:rickandmorty/feature/location/view/location_view.dart';
import 'package:rickandmorty/feature/tab/model/tab_model.dart';

class TabbarView extends StatelessWidget {
  const TabbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabList.length,
      child: Scaffold(
        body: TabBarView(children: tabList.map((e) => e.widget).toList()),
        bottomNavigationBar: BottomAppBar(
          child: TabBar(
            tabs: tabList.map((e) => Tab(icon: e.icon)).toList(),
          ),
        ),
      ),
    );
  }
}

List<TabModel> tabList = <TabModel>[
  TabModel(widget: const CharacterView(), icon: const Icon(Icons.people)),
  TabModel(widget: const EpisodeView(), icon: const Icon(Icons.tv)),
  TabModel(widget: const LocationView(), icon: const Icon(Icons.map)),
];
