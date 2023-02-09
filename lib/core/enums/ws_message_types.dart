enum WSMessageType {
  register('register'),
  listUser('listUsers'),
  activeUser('activeUser'),
  sendText('textMessage'),
  videoCallStarted('videoCallStarted'),
  videoCallAccepted('videoCallAccepted'),
  videoCallRejected('videoCallRejected'),
  videoCallEnded('videoCallEnded');

  const WSMessageType(this.value);
  final String value;
}
