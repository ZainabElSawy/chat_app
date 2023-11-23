import 'package:chat_app/controller/home/messagescreencontroller.dart';
import 'package:chat_app/view/widgets/home/messages/viewnewmessages.dart';
import 'package:flutter/material.dart';

class ListOfLastMessages extends StatelessWidget {
  const ListOfLastMessages({
    super.key,
    required this.controller,
  });

  final MessageScreenControllerImp controller;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ViewNewMessages(
          future: controller.checkLastMessage(
              controller.list[index].sender!,
              controller.list[index].recever!),
          lastMessage: controller.list[index],
        ),
        childCount: controller.list.length,
      ),
    );
  }
}
