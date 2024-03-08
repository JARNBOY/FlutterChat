import 'package:flutter/material.dart';

class NewMessenger extends StatefulWidget {
  const NewMessenger({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class NewMessengerState extends State<NewMessenger> {
  var _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  void _submitMessage() {
    final enterMessage = _messageController.text;

    if (enterMessage.trim().isEmpty) {
      return;
    }

    //send to firebase
    
    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 1, bottom: 14),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              textCapitalization: TextCapitalization.sentences,
              autocorrect: true,
              enableSuggestions: true,
              decoration: const InputDecoration(labelText: 'Send message...'),
            ),
          ),
          IconButton(
            onPressed: _submitMessage,
            icon: const Icon(Icons.send),
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
