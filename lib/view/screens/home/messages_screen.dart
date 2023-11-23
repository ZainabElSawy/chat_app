import 'package:chat_app/controller/home/messagescreencontroller.dart';
import 'package:chat_app/view/widgets/home/messages/customsearchbar.dart';
import 'package:chat_app/view/widgets/home/messages/listoflastmessagesbuilder.dart';
import 'package:chat_app/view/widgets/home/messages/usersimages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MessageScreenControllerImp controller =
        Get.put(MessageScreenControllerImp());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: CustomSearchBar(
                onTap: () =>
                    showSearch(context: context, delegate: DataSearch())),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: SizedBox(height: 120, child: UsersImages()),
            ),
          ),
          ListOfLastMessagesBuilder(controller: controller),
        ],
      ),
    );
  }
}
