import 'test_cate.dart';

class TestCateList {
  List<TestCate> children;

  TestCateList({this.children});

  factory TestCateList.fromJson(List json) {
    return TestCateList(
      children: json.map((e) => TestCate.fromJson(e)).toList(),
    );
  }
}
