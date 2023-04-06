import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:test/json_model.dart';

class CenterFadeScrollView extends StatefulWidget {
  final List<Widget> items;

  CenterFadeScrollView({required this.items});

  @override
  _CenterFadeScrollViewState createState() => _CenterFadeScrollViewState();
}

class _CenterFadeScrollViewState extends State<CenterFadeScrollView> {
  late PageController _pageController;
  late int _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPage = 0;
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.5);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        setState(() {
          _currentPage = _pageController.page!.round();
        });
        return true;
      },
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.items.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          double value = 1.0;
          if (_pageController.position.haveDimensions) {
            value = _pageController.page! - index;
            value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
          }
          return Center(
            widthFactor: 0,
            heightFactor: 0,
            child: Opacity(
              opacity: value,
              child: widget.items[index],
            ),
          );
        },
      ),
    );
  }
}
