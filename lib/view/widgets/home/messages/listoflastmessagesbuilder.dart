import 'package:chat_app/controller/home/messagescreencontroller.dart';
import 'package:chat_app/view/widgets/home/messages/listoflastmessages.dart';
import 'package:flutter/material.dart';

class ListOfLastMessagesBuilder extends StatelessWidget {
  const ListOfLastMessagesBuilder({
    super.key,
    required this.controller,
  });

  final MessageScreenControllerImp controller;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: controller.stream,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
          case ConnectionState.none:
            return const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            );
          case ConnectionState.active:
          case ConnectionState.done:
            if (snapshot.hasData) {
              final data = snapshot.data?.docs;
              controller.saveList(data);
              return ListOfLastMessages(controller: controller);
            }
        }
        return SliverToBoxAdapter(child: Container());
      },
    );
  }
}

