import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Page'),
        actions: [
          Container(
            padding: const EdgeInsets.all(5.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage('https://media.self.com/photos/57d88f0d24fe9dae328316e9/4:3/w_2560%2Cc_limit/Emma-Stone.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: const CircleAvatar(
              child: Text('SJ'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: const Center(
        child: FadeInImage(
          placeholder: AssetImage('asset/jar-loading.gif'), 
          image: NetworkImage('https://mocah.org/uploads/posts/586441-spiderman-gwen.jpg')
        ),
      ),
    );
  }
}
