import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Iconsax.back_square)),
      ),
      body: ListView(
        children: [
          _getWidgetChat(),
          _getWidgetChat(),
          _getWidgetChat(),
          _getWidgetChat(),
          _getWidgetChat(),
          _getWidgetChat(),
          _getWidgetChat(),
          _getWidgetChat(),
          _getWidgetChat(),
          _getWidgetChat(),
          _getWidgetChat(),
          _getWidgetChat(),
          _getWidgetChat(),
          _getWidgetChat()
        ],
      ),
    );
  }

  _getWidgetChat() {
    return ListTile(
      leading: CircleAvatar(),
      title: Text('Juan Flores'),
      subtitle: Text(
        'Buenos dias .....',
      ),
      trailing: IconButton(onPressed: () {}, icon: Icon(Iconsax.camera)),
    );
  }
}
