class TestProd {
  int productId;
  String productName;
  TestProd({this.productId, this.productName});
  factory TestProd.fromJson(Map<String, dynamic> json) {
    return TestProd(
      productId: json['productId'],
      productName: json['productName'],
    );
  }
}
