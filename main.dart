import 'package:dio/dio.dart';

import 'model/product/test_cate_list.dart';

void getData() async {
  Response<dynamic> res =
      await Dio().post("http://localhost:8090/product/list");
  // print(res.data);
  TestCateList model = TestCateList.fromJson(res.data['data']);
  print(model.children[0]);
  print(model.children[0].children[0].productName);
}

void main() {
  print('main run');
  getData();
}
