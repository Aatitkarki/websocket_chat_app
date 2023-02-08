enum WSMessageType {
  register('register'),
  listUser('listUsers'),
  activeUser('activeUser'),
  sendText('textMessage');

  const WSMessageType(this.value);
  final String value;
}
