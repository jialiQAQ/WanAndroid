import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PullToRefreshWidget extends StatelessWidget {
  final RefreshController controller;
  final Function() onRefresh;
  final Function() onLoading;
  final ListView listView;

  const PullToRefreshWidget(
      this.controller, this.onRefresh, this.onLoading, this.listView,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: controller,
      header: const ClassicHeader(),
      footer: const ClassicFooter(),
      onRefresh: onRefresh,
      onLoading: onLoading,
      child: listView,
    );
  }
}
