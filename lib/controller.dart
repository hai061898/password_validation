import 'package:get/get.dart';

class HomeController extends GetxController {
  final isVisible = false.obs;

  final isPasswordEightCharacters = false.obs;

  final hasPasswordOneNumber = false.obs;
  final numRE = RegExp(r'[0-9]');

  onInit() {
    super.onInit();
    IsVisible();
    PasswordValidation('');
  }

  PasswordValidation(String password) {
    isPasswordEightCharacters.value = false;
    if (password.length >= 8) {
      isPasswordEightCharacters.value = true;
    }

    hasPasswordOneNumber.value = false;
    if (numRE.hasMatch(password)) {
      hasPasswordOneNumber.value = true;
    }
  }

  IsVisible() {
    isVisible.value = !isVisible.value;
  }
}
