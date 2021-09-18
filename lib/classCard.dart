import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ClassCard extends StatelessWidget {
  const ClassCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset('assets/images/docker.jpeg'),
              Positioned(
                  top: 5,
                  right: 5,
                  child: PopupMenuButton(
                      child: Container(
                        color: Colors.grey.shade100,
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(Icons.more_vert),
                        ),
                      ),
                      itemBuilder: (context) => []))
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Docker Mastery: with Kubernetes +Swarm from a Docker Captain',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  const Text('Bret Fisher, Docker Captain and DevOps Sysadmin'),
                  Expanded(child: Container()),
                  const LinearProgressIndicator(
                    backgroundColor: Colors.red,
                    value: 75,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('1% Complete'),
                      RatingBar.builder(
                          itemSize: 20,
                          glowColor: Colors.amber,
                          itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('Your Rating'),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
