import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Iconsax.heart)),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('message');
              },
              icon: Icon(Iconsax.message))
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            _getCard(),
            _getCard(),
            _getCard(),
            _getCard(),
            _getCard(),
            _getCard(),
            _getCard(),
          ],
        ),
      ),
    );
  }

  _getStories() {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: [
        _getCircleAvatar('A', Colors.black),
        _getCircleAvatar('B', Colors.blue),
        _getCircleAvatar('C', Colors.yellow),
        _getCircleAvatar('D', Colors.green),
        _getCircleAvatar('E', Colors.amber),
        _getCircleAvatar('F', Colors.blueGrey),
        _getCircleAvatar('G', Colors.brown),
        _getCircleAvatar('H', Colors.deepPurpleAccent),
        _getCircleAvatar('I', Colors.purpleAccent),
        _getCircleAvatar('J', Colors.cyan),
        _getCircleAvatar('K', Colors.orange)
      ],
    );
  }

  _getCircleAvatar(String letraAvatar, Color colorAvatar) {
    return Container(
      margin: EdgeInsets.only(right: 7),
      child: CircleAvatar(
        child: Text(letraAvatar),
        backgroundColor: colorAvatar,
      ),
    );
  }

  _getCard() {
    return Column(
      children: [
        Row(
          children: [CircleAvatar(), Text('Riobamba')],
        ),
        Container(
          height: 270,
          width: double.infinity,
          color: Colors.black,
        ),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Iconsax.heart)),
            IconButton(onPressed: () {}, icon: Icon(Iconsax.message)),
            IconButton(onPressed: () {}, icon: Icon(Iconsax.send)),
            IconButton(onPressed: () {}, icon: Icon(Iconsax.save_2))
          ],
        )
      ],
    );
  }
}
