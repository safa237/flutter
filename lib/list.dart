import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


class AnimatedListScreen extends StatelessWidget {
  const AnimatedListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter map'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: const CustomAnimatedList(),
    );
  }
}

class CustomAnimatedList extends StatefulWidget {
  const CustomAnimatedList({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedList> createState() => _CustomAnimatedListState();
}

class _CustomAnimatedListState extends State<CustomAnimatedList> {
  final List<String> items = [];

  final GlobalKey<AnimatedListState> key = GlobalKey();

  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: IconButton(onPressed: insertItem, icon:Icon(Icons.add,size: 60,))),
        SizedBox(height: 10,),

        Expanded(
          child: AnimatedList(
              key: key,
              controller: scrollController,
              initialItemCount: items.length,
              shrinkWrap: true,
              itemBuilder: (context, index, animation) {
                return SlideTransition(
                    position: animation.drive(Tween<Offset>(
                        begin: const Offset(1, 0), end: const Offset(0, 0))),
                    child: AnimatedListItem(
                        onPressed: () {
                          deleteItem(index);

                        },
                        text: items[index]));
              }),
        ),

      ],
    );
  }

  void insertItem() {
    var index = items.length;
    items.add('item ${index + 1}');
    key.currentState!.insertItem(index);

    Future.delayed(const Duration(milliseconds: 350), () {
      scrollController.animateTo(scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 350), curve: Curves.easeIn);
    });
  }
  void deleteItem(int index) {

    key.currentState!.removeItem(index, (context, animation) {
      return SizeTransition(
          sizeFactor: animation,
          child: AnimatedListItem(text: items[index], onPressed: () {}));
    });
    items.removeAt(index);
  }




}

class AnimatedListItem extends StatelessWidget {
  const AnimatedListItem(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: ListTile(

        title: Text(text),
        trailing:
        IconButton(onPressed: onPressed, icon: const Icon(Icons.delete)),
      ),
    );
  }
}
