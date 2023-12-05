// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:platform_design/ui/common/CommonDialog.dart';
import 'package:platform_design/ui/theme/color/color_scheme.dart';
import 'package:platform_design/ui/theme/typography/text_theme.dart';

import 'song_detail_tab.dart';
import 'utils.dart';
import 'widgets.dart';

class SongsTab extends StatefulWidget {
  static const title = 'Songs';
  static const androidIcon = Icon(Icons.music_note);
  static const iosIcon = Icon(CupertinoIcons.music_note);

  const SongsTab({super.key, this.androidDrawer});

  final Widget? androidDrawer;

  @override
  State<SongsTab> createState() => _SongsTabState();
}

class _SongsTabState extends State<SongsTab> {
  static const _itemsLength = 50;

  final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();

  late List<MaterialColor> colors;
  late List<String> songNames;

  late ScrollController controller;

  String text = "State";
  int selectedIndex = 0; // for radio
  List<int> selectedList = [
    0,
  ]; // for checkbox

  @override
  void initState() {
    _setData();
    controller = ScrollController();
    super.initState();
  }

  void _setData() {
    colors = getRandomColors(_itemsLength);
    songNames = getRandomNames(_itemsLength);
  }

  Future<void> _refreshData() {
    return Future.delayed(
      // This is just an arbitrary delay that simulates some network activity.
      const Duration(seconds: 2),
      () => setState(() => _setData()),
    );
  }

  Widget _listBuilder(BuildContext context, int index) {
    if (index >= _itemsLength) return Container();

    // Show a slightly different color palette. Show poppy-ier colors on iOS
    // due to lighter contrasting bars and tone it down on Android.
    final color = defaultTargetPlatform == TargetPlatform.iOS ? colors[index] : colors[index].shade400;

    return SafeArea(
      top: false,
      bottom: false,
      child: Hero(
        tag: index,
        child: HeroAnimatingSongCard(
          song: songNames[index],
          color: color,
          heroAnimation: const AlwaysStoppedAnimation(0),
          onPressed: () => Navigator.of(context).push<void>(
            MaterialPageRoute(
              builder: (context) => SongDetailTab(
                id: index,
                song: songNames[index],
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void _togglePlatform() {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      debugDefaultTargetPlatformOverride = TargetPlatform.android;
    } else {
      debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    }

    // This rebuilds the application. This should obviously never be
    // done in a real app but it's done here since this app
    // unrealistically toggles the current platform for demonstration
    // purposes.
    WidgetsBinding.instance.reassembleApplication();
  }

  // ===========================================================================
  // Non-shared code below because:
  // - Android and iOS have different scaffolds
  // - There are different items in the app bar / nav bar
  // - Android has a hamburger drawer, iOS has bottom tabs
  // - The iOS nav bar is scrollable, Android is not
  // - Pull-to-refresh works differently, and Android has a button to trigger it too
  //
  // And these are all design time choices that doesn't have a single 'right'
  // answer.
  // ===========================================================================
  Widget _buildAndroid(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(SongsTab.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () async => await _androidRefreshKey.currentState!.show(),
          ),
          IconButton(
            icon: const Icon(Icons.shuffle),
            onPressed: _togglePlatform,
          ),
        ],
      ),
      drawer: widget.androidDrawer,
      body: RefreshIndicator(
        key: _androidRefreshKey,
        onRefresh: _refreshData,
        child: Scrollbar(
          controller: controller,
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: true),
            child: SingleChildScrollView(
              controller: controller,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(
                    width: 10,
                    height: 26,
                  ),
                  TextField(
                    onChanged: (it) {
                      text = it;
                    },
                  ),
                  const SizedBox(
                    width: 10,
                    height: 10,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      KTDialog(context);
                    },
                    child: const Text("Open Dialog"),
                  ),
                  FilledButton(
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (_) => Container(
                          width: 300,
                          padding: const EdgeInsets.all(10),
                          child: const Text("blabla"),
                        ),
                      );
                    },
                    child: const Text("Open BottomSheet"),
                  ),
                  ...List.generate(
                    3,
                    (index) => TextButton(
                      onPressed: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Row(
                        children: [
                          Radio<int>(
                            value: index,
                            groupValue: selectedIndex,
                            onChanged: (idx) {
                              if (idx != null) {
                                selectedIndex = index;
                              }
                            },
                          ),
                          Text(
                            "Item${index + 1}",
                            style: textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Text("Card Text1"),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Text("Card Text2"),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                    height: 16,
                  ),
                  const Divider(indent: 10, endIndent: 10,),
                  const SizedBox(
                    width: 10,
                    height: 5,
                  ),
                  ...List.generate(
                    3,
                    (index) {
                      return TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Checkbox(
                              value: selectedList.contains(index),
                              onChanged: (isSelected) {
                                setState(() {
                                  if (isSelected == true) {
                                    selectedList.add(index);
                                  } else {
                                    selectedList.remove(index);
                                  }
                                });
                              },
                            ),
                            Text("Data ${index+1}", style: appTextTheme.titleMedium,)
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 10,
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push<void>(
                        MaterialPageRoute(
                          builder: (context) => SongDetailTab(
                            id: 1,
                            song: songNames[1],
                            color: colorScheme.primary,
                          ),
                        ),
                      );
                    },
                    child: const Text("Open Sub Page"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: _togglePlatform,
            child: const Icon(CupertinoIcons.shuffle),
          ),
        ),
        CupertinoSliverRefreshControl(
          onRefresh: _refreshData,
        ),
        SliverSafeArea(
          top: false,
          sliver: SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                _listBuilder,
                childCount: _itemsLength,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(context) {
    return _buildAndroid(context);
  }
}
