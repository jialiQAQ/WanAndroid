import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:wanandroid/constant/color.dart';
import 'package:wanandroid/constant/dimension.dart';
import 'package:wanandroid/constant/style.dart';
import 'package:wanandroid/http/error_codes.dart';
import 'package:wanandroid/http/http_service.dart';
import 'package:wanandroid/model/home_page_article_entity.dart';
import 'package:wanandroid/widget/pull_to_refresh_widget.dart';

import '../../middleware/route.dart';

class HomePagePage extends StatefulWidget {
  const HomePagePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePagePage> {
  int _curPageNo = 1;
  List<HomePageArticleDataDatas>? _list;
  final RefreshController _controller = RefreshController();

  @override
  void initState() {
    super.initState();
    print("jiali initState");
    _onRefresh();
  }

  void _onRefresh() {
    _curPageNo = 1;
    _requestHomePageArticle();
  }

  void _onLoading() {
    _curPageNo += 1;
    _requestHomePageArticle();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: MyColors.primary,
        width: double.infinity,
        height: double.infinity,
        child: PullToRefreshWidget(
            _controller,
            _onRefresh,
            _onLoading,
            ListView.builder(
                itemCount: _list?.length,
                itemBuilder: (context, index) {
                  if (_list == null) {
                    return Container();
                  }
                  HomePageArticleDataDatas datas = _list![index];
                  return GestureDetector(
                      onTap: () {
                        Routes.to(context, Routes.webPage,
                            params: {"url": datas.link});
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(datas.title, style: Styles.textTitle),
                            const Divider(height: 5),
                            Text(datas.desc, style: Styles.textContent)
                          ],
                        ),
                        margin: const EdgeInsets.all(Dimensions.itemMargin),
                      ));
                })));
  }

  void _requestHomePageArticle() {
    HttpService.getHomePageArticles(_curPageNo).then((value) {
      EasyLoading.dismiss();
      if (value.errorCode == ErrorCode.success) {
        _curPageNo++;
        _list ??= [];
        _list?.addAll(value.data.datas);
        setState(() {});
      } else {
        EasyLoading.showToast(value.errorMsg);
      }
    });
  }
}
