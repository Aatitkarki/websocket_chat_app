import 'package:chat_app/config/ws_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_socket_channel/io.dart';

final wsClientProvider = Provider((ref) => WSClient());

class WSClient {
  late final IOWebSocketChannel webSocketChannel;

  WSClient() {
    webSocketChannel = IOWebSocketChannel.connect(Uri.parse(WSConfig.uri));
  }
}
