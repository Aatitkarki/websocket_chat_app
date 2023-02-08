import 'package:chat_app/core/providers/registeration_provider.dart';
import 'package:chat_app/core/models/ws_data.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../service/web_socket_service.dart';

final activeUsersProvider =
    StateNotifierProvider<ActiveUserProvider, List<UserModel>>(
        ActiveUserProvider.new);

final socketService = StreamProvider((ref) {
  final ss = ref.read(webSocketProvider);
  return ss.socketResponse.stream.asBroadcastStream();
});

class ActiveUserProvider extends StateNotifier<List<UserModel>> {
  final StateNotifierProviderRef ref;
  WebSocketService get _socketServices => ref.read(webSocketProvider);
  ActiveUserProvider(this.ref) : super([]) {
    ref.listen(socketService, (previous, next) {
      final data = next.value;
      if (data != null) {
        data.whenOrNull(
          activeUsers: (user) {
            List<UserModel> users = state.toList();
            if (user.isOnline) {
              users.add(user);
            } else {
              users.removeWhere((element) => element.uid == user.uid);
            }
            state = users;
          },
        );
      }
    });
  }
  void registerWSUser() {
    final user = ref.read(registerationStateProvider);
    _socketServices.registerUser(user);
    _socketServices.listUsers(user.uid);
  }

  void listenActiveUsers() {
    _socketServices.listenMessages();
  }
}
