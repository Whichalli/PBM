import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pbm_app/presentation/ai_screen/models/model.dart';

class ChatPage extends StatefulWidget {
  final String character;

  const ChatPage({
    required this.character,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late final OpenAI _openAI;
  late bool _isLoading;

  final TextEditingController _textController = TextEditingController();
  late List<ChatMessage> _messages;

  @override
  void initState() {
    _messages = [];
    _isLoading = false;

    // Initialize ChatGPT SDK
    _openAI = OpenAI.instance.build(
      token: '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', // Replace with your actual API key
      baseOption: HttpSetup(
        receiveTimeout: const Duration(seconds: 30),
      ),
    );

    // This tells ChatGPT what their role is
    _handleInitialMessage(
      'You are a ${widget.character.toLowerCase()}. Please send a super short intro message. Your name is Echo.',
    );
    super.initState();
  }

  Future<void> _handleInitialMessage(String character) async {
    setState(() {
      _isLoading = true;
    });

    final request = ChatCompleteText(
      messages: [
        Messages(
          role: Role.assistant,
          content: character,
        ),
      ],
      maxToken: 200,
      model: GptTurbo0631Model(),
      functions: [
        FunctionData(
          name: "get_current_weather",
          description: "Get the current weather in a given location",
          parameters: {
            "type": "object",
            "properties": {
              "location": {
                "type": "string",
                "description": "The city and state, e.g. San Francisco, CA",
              },
              "unit": {
                "type": "string",
                "enum": ["celsius", "fahrenheit"],
              },
            },
            "required": ["location"],
          },
        ),
      ],
      functionCall: FunctionCall.auto,
    );

    ChatCTResponse? response = await _openAI.onChatCompletion(request: request);

    ChatMessage message = ChatMessage(
      text: response?.choices?.first?.message?.content?.trim() ?? '',
      isSentByMe: false,
      timestamp: DateTime.now(),
    );

    setState(() {
      _messages.insert(0, message);
      _isLoading = false;
    });
  }


  Widget _buildChatComposer() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 12,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textController,
              decoration: InputDecoration.collapsed(
                hintText: 'Type a message',
                enabled: !_isLoading,
              ),
              // Add this to handle submission when user presses done
              onSubmitted: _isLoading ? null : _handleSubmit,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            // Add this to handle submission when user presses the send icon
            onPressed: _isLoading
                ? null
                : () => _handleSubmit(
              _textController.text,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChatList() {
    return Flexible(
      child: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        reverse: true,
        itemCount: _messages.length,
        itemBuilder: (_, int index) {
          ChatMessage message = _messages[index];
          return _buildChatBubble(message);
        },
      ),
    );
  }

  Widget _buildChatBubble(ChatMessage message) {
    final isSentByMe = message.isSentByMe;
    final dateFormat = DateFormat('MMM d, yyyy');
    final timeFormat = DateFormat('h:mm a');

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment:
        isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Container(
              margin: isSentByMe
                  ? const EdgeInsets.only(left: 100)
                  : const EdgeInsets.only(right: 100),
              decoration: BoxDecoration(
                color: isSentByMe ? Colors.blue : Colors.grey[300],
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(12.0),
                  topRight: const Radius.circular(12.0),
                  bottomLeft: isSentByMe
                      ? const Radius.circular(12.0)
                      : const Radius.circular(0.0),
                  bottomRight: isSentByMe
                      ? const Radius.circular(0.0)
                      : const Radius.circular(12.0),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isSentByMe
                        ? 'You'
                        : '@Echo_${widget.character.toString().replaceAll(' ', '')}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isSentByMe ? Colors.white : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    message.text,
                    style: TextStyle(
                      color: isSentByMe ? Colors.white : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '${dateFormat.format(message.timestamp)} at ${timeFormat.format(message.timestamp)}',
                    style: TextStyle(
                      color: isSentByMe ? Colors.white : Colors.black87,
                      fontSize: 8,
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _handleSubmit(String text) async {
    if (text.isNotEmpty) {
      setState(() {
        _isLoading = true;
      });

      final userMessage = Messages(
        role: Role.user,
        content: text,
      );

      final request = ChatCompleteText(
        messages: [
          userMessage,
        ],
        maxToken: 200,
        model: GptTurbo0631Model(),
        functions: [
          FunctionData(
            name: "get_current_weather",
            description: "Get the current weather in a given location",
            parameters: {
              "type": "object",
              "properties": {
                "location": {
                  "type": "string",
                  "description": "The city and state, e.g. San Francisco, CA",
                },
                "unit": {
                  "type": "string",
                  "enum": ["celsius", "fahrenheit"],
                },
              },
              "required": ["location"],
            },
          ),
        ],
        functionCall: FunctionCall.auto,
      );

      ChatCTResponse? response = await _openAI.onChatCompletion(request: request);

      if (response != null && response.choices.isNotEmpty) {
        final assistantMessage = response.choices.first.message;
        final assistantText = assistantMessage?.content?.trim() ?? '';

        // Add the user and assistant messages to the chat history
        _messages.insert(0, ChatMessage(
          text: text,
          isSentByMe: true,
          timestamp: DateTime.now(),
        ));
        _messages.insert(0, ChatMessage(
          text: assistantText,
          isSentByMe: false,
          timestamp: DateTime.now(),
        ));

        setState(() {
          _isLoading = false;
        });
      } else {
        // Handle error or no response scenario
        setState(() {
          _isLoading = false;
        });
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Your app bar content
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: Stack(
          children: [
            Column(
              children: [
                _buildChatList(),
                const Divider(height: 1.0),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                  ),
                  child: _buildChatComposer(),
                ),
              ],
            ),
            if (_isLoading)
              Center(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: const CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
