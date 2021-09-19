import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:udemy_desktop_flutter/models/class.dart';

class ClassCard extends StatefulWidget {
  final Class cls;
  const ClassCard(this.cls, {Key? key}) : super(key: key);

  @override
  State<ClassCard> createState() => _ClassCardState();
}

class _ClassCardState extends State<ClassCard> {
  bool _hasFocus = false;
  final _focusedDecoration = BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5, spreadRadius: 5)], color: Colors.white, border: Border.all(color: Colors.grey.shade300));
  final _unfocusedDecoration = BoxDecoration(color: Colors.white, border: Border.all(color: Colors.grey.shade300));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            _hasFocus = true;
          });
        },
        onExit: (event) {
          setState(() {
            _hasFocus = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: _hasFocus ? _focusedDecoration : _unfocusedDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/${widget.cls.fileName}',
                    height: 180,
                    fit: BoxFit.fitHeight,
                  ),
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
                      Text(
                        widget.cls.title,
                        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        widget.cls.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Expanded(child: Container()),
                      LinearProgressIndicator(
                        backgroundColor: Colors.grey.shade200,
                        value: widget.cls.percentage,
                        valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 2)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${(widget.cls.percentage * 100).toStringAsFixed(0)}% Complete'),
                          RatingBar.builder(
                              unratedColor: Colors.grey.shade400,
                              itemSize: 20,
                              allowHalfRating: true,
                              glowColor: Colors.amber,
                              initialRating: widget.cls.rating,
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
        ),
      ),
    );
  }
}
