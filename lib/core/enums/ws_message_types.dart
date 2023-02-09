enum WSMessageType {
  register('register'),
  listUser('listUsers'),
  activeUser('activeUser'),
  sendText('textMessage'),
  videoCall('videoCall');

  const WSMessageType(this.value);
  final String value;
}
