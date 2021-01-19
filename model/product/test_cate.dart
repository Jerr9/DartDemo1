import 'test_prod.dart';

class TestCate {
  int categoryId;
  String categoryName;
  List<TestProd> children;

  TestCate({this.categoryId, this.categoryName, this.children});

  factory TestCate.fromJson(Map<String, dynamic> json) {
    return TestCate(
      categoryId: json['categoryId'],
      categoryName: json['categoryName'],
      children: (json['children'] as List).map((e) {
        return TestProd.fromJson(e);
      }).toList(),
    );
    // if (json != null) {

    //   TestCate c = TestCate();
    //   // return TestCate(
    //   c.categoryId = json['categoryId'];
    //   c.categoryName = json['categoryName'];
    //   print(json['children'].runtimeType);
    //   print("xxxxxxxxxxxxxxxxxxxxxxxx");
    //   c.children = (json['children'] as List<dynamic>)?.map((e) {
    //     print(TestProd.fromJson(e).productName);
    //     return (e == null ? null : TestProd.fromJson(e));
    //   })?.toList();
    //   // );
    //   // return c;
    // }
  }
}
