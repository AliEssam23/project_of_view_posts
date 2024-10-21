
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:project_of_view_posts/pages/homePage/modelOfHomePage.dart';

class controllerOfHomePage extends GetxController {
  var info = <ModelOfPost>[].obs;
  Dio dio = new Dio();
  RxBool isloding = true.obs;

@override
  void onInit(){
    getInfo();
super.onInit();
  }

  Future<void> getInfo() async {
    final response =
        await dio.get("https://jsonplaceholder.typicode.com/posts");

    try {
      if (response.statusCode == 200) {
        List data = response.data;

        info.value =
            data.map((Element) => ModelOfPost.fromJson(Element)).toList();

        isloding(false);
      } else {
        print(response.statusCode);
        isloding(true);
      }
    } finally {
      isloding(true);
    }
  }
}
