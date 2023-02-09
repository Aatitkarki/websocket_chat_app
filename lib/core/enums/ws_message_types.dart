enum WSMessageType {
  register('register'),
  listUser('listUsers'),
  activeUser('activeUser'),
  sendText('textMessage'),
  videoCallStarted('videoCallStarted'),
  videoCallAccepted('videoCallAccepted'),
  videoCallEnded('videoCallEnded');

  const WSMessageType(this.value);
  final String value;
}
