import 'package:chat_app/core/service/shared_peference_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../models/user_model.dart';

const uuid = Uuid();

final registerationStateProvider =
    StateNotifierProvider<RegisterationDataProvider, UserModel>(
        (ref) => RegisterationDataProvider(SharedPreferencesService()));

class RegisterationDataProvider extends StateNotifier<UserModel> {
  final SharedPreferencesService sharedPreferencesService;
  RegisterationDataProvider(this.sharedPreferencesService)
      : super(const UserModel(name: '', uid: ""));

  getUserDetails() async {
    final userModel = await sharedPreferencesService.getUserDetails();
    if (userModel != null) {
      state = userModel;
    }
  }

  registerUser(String userName) {
    final userModel = UserModel(name: userName, uid: uuid.v4());
    sharedPreferencesService.setUserDetails(userModel);
    state = userModel;
  }
}
