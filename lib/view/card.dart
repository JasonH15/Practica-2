import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  const Head({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 58,
            // backgroundImage: AssetImage('images/usuario.png'),
          ),
          SizedBox(height: 20),
          Text(
            "Jason Hernandez",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Desarrollador frontend",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          SizedBox(height: 12.0),
          LikeDislikeBtn(),
          SizedBox(height: 9.0),
          Lenguajes(),
          //SizedBox(height: 140.0),
          FooterCard(),
        ],
      ),
    );
  }
}

class Followers extends StatelessWidget {
  final int like;
  final int dislike;

  const Followers({super.key, required this.like, required this.dislike});

  @override
  Widget build(BuildContext context) {
    double rating = (like + dislike) > 0 ? (like / (like + dislike)) * 5 : 0;
    return Row(
      children: [
        const Column(
          children: [
            Text(
              "6",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            SizedBox(width: 5.0),
            Text("Proyectos")
          ],
        ),
        const SizedBox(width: 25.0),
        const Column(
          children: [
            Text(
              "1.8k",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            SizedBox(width: 5.0),
            Text("Seguidores")
          ],
        ),
        const SizedBox(width: 30.0),
        Column(
          children: [
            Text(
              rating.toStringAsFixed(1),
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            const SizedBox(width: 5.0),
            const Text("Rating"),
          ],
        ),
      ],
    );
  }
}

class LikeDislikeBtn extends StatefulWidget {
  const LikeDislikeBtn({super.key});

  @override
  State<LikeDislikeBtn> createState() => _LikeDislikeBtnState();
}

class _LikeDislikeBtnState extends State<LikeDislikeBtn> {
  int like = 0;
  int dislike = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Followers(like: like, dislike: dislike),
        Row(
          children: [
            IconButton(
              iconSize: 19.0,
              onPressed: () {
                setState(() {
                  like++;
                });
              },
              icon: const Icon(Icons.thumb_up),
            ),
            Text(
              '$like',
              style: const TextStyle(fontSize: 19.0),
            ),
            const SizedBox(width: 19.0),
            IconButton(
              iconSize: 19.0,
              onPressed: () {
                setState(() {
                  dislike++;
                });
              },
              icon: const Icon(Icons.thumb_down),
            ),
            Text(
              '$dislike',
              style: const TextStyle(fontSize: 19.0),
            ),
          ],
        ),
      ],
    );
  }
}

class Lenguajes extends StatelessWidget {
  const Lenguajes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 5.0,
      runSpacing: 10.0,
      children: [
        Chip(
          label: Text('Flutter'),
        ),
        Chip(
          label: Text('Dart'),
        ),
        Chip(
          label: Text('React'),
        ),
        Chip(
          label: Text('Git'),
        )
      ],
    );
  }
}

class FooterCard extends StatelessWidget {
  const FooterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.mail),
          )
        ],
      ),
    );
  }
}
