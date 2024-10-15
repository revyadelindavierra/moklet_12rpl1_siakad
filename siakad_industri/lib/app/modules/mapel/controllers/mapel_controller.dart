import 'package:get/get.dart';
import 'package:siakad_industri/app/data/models/model_mapel.dart';
import 'package:siakad_industri/app/data/repositories/repository_mapel.dart';

class MapelController extends GetxController {
  //TODO: Implement MapelController

  final count = 0.obs;
  Rx<bool> isLoaded = false.obs;
  Rx<ModelMapel> mapel = ModelMapel().obs;

  @override
  void onInit() {
    super.onInit();
    getMapel();
  }

  void getMapel() {
    isLoaded(false);
    RepositoryMapel().loadMapel().then((ModelMapel response) {
      mapel(response);
      isLoaded(true);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}