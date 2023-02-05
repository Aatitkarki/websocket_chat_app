import 'package:chat_app/core/service/shared_peference_service.dart';
import 'package:chat_app/core/service/web_socket_service.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../chat/controller/chat_controller.dart';

const uuid = Uuid();

final homeControllerProvider = Provider((ref) {
  return HomeController(ref,
      sharedPreferencesService: SharedPreferencesService());
});

final registerationStateProvider = StateProvider((ref) => false);

final activeUsersPovider =
    StreamProvider.autoDispose<List<UserModel>>((ref) async* {
  List<UserModel> allUsers = const <UserModel>[];

  await for (final message in ref.read(webSocketProvider).stream) {
    if (message.startsWith("active_user:")) {
      List<String> userData = message.split(":")[1].split(",");
      UserModel userModel = UserModel(name: userData[1], uid: userData[0]);
      if (!allUsers.contains(userModel)) {
        allUsers = [...allUsers, userModel];
      }
      yield allUsers;
    }
  }
});

class HomeController {
  final SharedPreferencesService sharedPreferencesService;
  final ProviderRef ref;

  HomeController(this.ref, {required this.sharedPreferencesService});

  late UserModel? userModel;

  //Getting current user details
  getUserDetails() async {
    userModel = await sharedPreferencesService.getUserDetails();
    if (userModel == null) {
      ref.read(registerationStateProvider.notifier).state = false;
    } else {
      ref.read(registerationStateProvider.notifier).state = true;
      _connectionStartupAndUpdateUserdata(userModel!);
    }
  }

  //Staring initial WS connecting and updating data of user
  _connectionStartupAndUpdateUserdata(UserModel userModel) {
    ref.read(webSocketProvider).startConnection();
    ref.read(webSocketProvider).registerUser(userModel);
    ref.read(webSocketProvider).listUsers();
    // ref.read(allChatsProvider);
  }

  //Initial User details setup
  setUserDetails(String userName) {
    userModel = UserModel(
      name: userName,
      uid: uuid.v4(),
    );
    sharedPreferencesService.setUserDetails(userModel!);
    _connectionStartupAndUpdateUserdata(userModel!);
  }
}
