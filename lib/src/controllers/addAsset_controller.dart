import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddAssetsController extends GetxController {
  final TextEditingController assetTagIdController = TextEditingController();
  final TextEditingController purchasedController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController brandController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController serialNoController = TextEditingController();
  final TextEditingController costController = TextEditingController();
  final TextEditingController disposedDateController = TextEditingController();
  final TextEditingController createdDateController = TextEditingController();
  final TextEditingController siteController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController depreciationController = TextEditingController();
  final TextEditingController totalCostController = TextEditingController();
  final TextEditingController assetsLifeController = TextEditingController();
  final TextEditingController salvageController = TextEditingController();
  final TextEditingController dateAcquiredController = TextEditingController();

  var imageFile = Rx<File?>(null);
  var selectedRadio = 'Option2'.obs;
  var showTextField = true.obs;
  // final RxBool showTextField = true.obs;

  void pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    imageFile.value=pickedFile!= null? File(pickedFile.path): null;
  }

  void deleteImage() {
    imageFile.value = null;
  }

  void setSelectedRadio(String value) {
    selectedRadio.value = value;
    if (value == 'Option1') {
      showTextField.value = true;
    } else {
      showTextField.value = false;
    }
  }
  @override
  void onClose() {
    assetTagIdController.dispose();
    purchasedController.dispose();
    categoryController.dispose();
    descriptionController.dispose();
    brandController.dispose();
    modelController.dispose();
    serialNoController.dispose();
    costController.dispose();
    disposedDateController.dispose();
    createdDateController.dispose();
    siteController.dispose();
    locationController.dispose();
    depreciationController.dispose();
    totalCostController.dispose();
    assetsLifeController.dispose();
    salvageController.dispose();
    dateAcquiredController.dispose();
    super.onClose();
  }
}
