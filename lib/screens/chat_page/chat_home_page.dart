import 'package:chatbot/constants/meta_colors.dart';
import 'package:chatbot/model/chat_model/chatmodel.dart';
import 'package:chatbot/model/suggestion_model/suggestionmodel.dart';
import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ChatHome extends StatefulWidget {
  const ChatHome({Key? key}) : super(key: key);

  @override
  State<ChatHome> createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  List<ChatModel> chatList = [];
  List<SuggestionModel> sugList = [];
  late DialogFlowtter dialogFlowtter;
  late ScrollController _controller;
  @override
  void initState() {
    _controller = ScrollController();
    DialogFlowtter.fromFile().then((instance) {
      dialogFlowtter = instance;
      eventCall("Welcome");
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final wt = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                controller: _controller,
                child: Column(
                    children: List.generate(chatList.length, (index) {
                  ChatModel chat = chatList.toList()[index];
                  return Padding(
                    padding: EdgeInsets.only(
                        left: chat.isRecieved ? wt * 5 : wt * 20,
                        right: chat.isRecieved ? wt * 20 : wt * 5,
                        top: 10,
                        bottom: 10),
                    child: Align(
                      alignment: chat.isRecieved
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Container(
                        decoration: BoxDecoration(
                            color: chat.isRecieved
                                ? Metacolor.recvCard
                                : Metacolor.sendCard,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: chat.isLoading
                              ? LoadingAnimationWidget.staggeredDotsWave(
                                  color: Colors.black54, size: 30)
                              : Text(chat.message),
                        ),
                      ),
                    ),
                  );
                })),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Wrap(
                children: List.generate(
                  sugList.length,
                  (index) => InkWell(
                    onTap: () async {
                      sendMessage(sugList[index].label);

                      // sendMessage("getSuggestion");
                      // setState(() {
                      //   chatList.insert(
                      //       chatList.length - 1,
                      //       ChatModel(
                      //         message: sugList[index].label,
                      //         isRecieved: false,
                      //         createdTime: DateTime.now(),
                      //       ));
                      // });
                      // await Future.delayed(const Duration(seconds: 1));

                      // setState(() {
                      //   chatList.insert(
                      //       chatList.length - 1,
                      //       ChatModel(
                      //           message:
                      //               'When you have multiple types in the same class you might want to make one of those types to implement a interface or mixin a class.',
                      //           isRecieved: true,
                      //           createdTime: DateTime.now()));
                      // });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Chip(
                        label: Text(sugList[index].label),
                        backgroundColor: Metacolor.suggestion,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future sendMessage(String text) async {
    setState(() {
      addMessage(text, true);
    });

    final QueryInput queryInput = QueryInput(
      text: TextInput(
        text: text,
      ),
    );
    final DetectIntentResponse response = await dialogFlowtter.detectIntent(
      queryInput: queryInput,
    );
    checkMessageAndSugesstion(response);
  }

  Future eventCall(String event) async {
    final QueryInput queryInput = QueryInput(
      event: EventInput(
        name: event,
        languageCode: 'en',
      ),
    );
    final DetectIntentResponse response = await dialogFlowtter.detectIntent(
      queryInput: queryInput,
    );
    checkMessageAndSugesstion(response);
  }

  checkMessageAndSugesstion(DetectIntentResponse response) {
    List<Message>? fulfillmentMessages =
        response.queryResult!.fulfillmentMessages!;

    int indexOfSug = fulfillmentMessages.indexWhere((element) =>
        (element.platform.toString() == "DialogPlatform.LINE" &&
            element.payload != null &&
            element.payload!["SUGGESTIONS"] != null));
    print("---------------->>>$fulfillmentMessages");
    int indexOfError = fulfillmentMessages.indexWhere((element) =>
        (element.platform.toString() == "DialogPlatform.LINE" &&
            element.payload != null &&
            element.payload!["error"] != null));

    setState(() {
         print(
            "---$sugList------>$indexOfError<-->${indexOfError == -1 || !fulfillmentMessages[indexOfError].payload!["error"]}");
        if (indexOfError == -1 ||
            !fulfillmentMessages[indexOfError].payload!["error"]) {
          sugList.clear();
        }
      if (indexOfSug != -1) {
        var suggestions =
            fulfillmentMessages[indexOfSug].payload!["SUGGESTIONS"];
    
        suggestions.forEach((element) {
          sugList.add(SuggestionModel(label: element.toString()));
        });
      }
      if (response.text != null) {
        addMessage(response.text!);
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) => scrollToEnd());
  }

  addMessage(String msg, [bool isUserMsg = false]) {
    if (chatList.isNotEmpty && chatList.last.isLoading) {
      chatList.removeLast();
    }
    chatList.add(ChatModel(
        message: msg, isRecieved: !isUserMsg, createdTime: DateTime.now()));
    if (isUserMsg) {
      addLoader();
    }
  }

  addLoader() {
    chatList.add(
      ChatModel(
          message: '',
          isRecieved: true,
          createdTime: DateTime.now(),
          isLoading: true),
    );
  }

  scrollToEnd() {
    _controller.jumpTo(_controller.position.maxScrollExtent);
  }
}
