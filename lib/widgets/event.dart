import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.title,
    required this.body,
    required this.likes,
    required this.updated,
    required this.sId,
    required this.registrants,
    required this.duration,
    required this.venue,
    required this.date,
  }) : super(key: key);

  final String? title;
  final String? body;
  final int? likes;
  final bool? updated;
  final String? sId;
  final int? registrants;
  final String? duration;
  final String? venue;
  final String? date;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: const Color(0xff111111),
            child: Column(
              children: [
                Text(
                  '$date',
                  style: const TextStyle(
                    fontFamily: 'SpaceGrotesk',
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        CarouselSlider(
                          items: [
                            Image.asset(
                              'assets/images/sample_event.png',
                              fit: BoxFit.cover,
                            ),
                          ],
                          options: CarouselOptions(
                            enlargeCenterPage: true,
                            height: 380,
                            viewportFraction: 1,
                            clipBehavior: Clip.hardEdge,
                            autoPlay: true,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: const Color(0x88000000),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(8, 6, 8, 6),
                              child: Text(
                                "EVENT",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
                  child: Text(
                    '$title',
                    style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        height: 2,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 4, 12, 8),
                  child: ReadMoreText(
                    '$body',
                    style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xffC8C8C8),
                        height: 1.5,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.left,
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    moreStyle:
                        const TextStyle(decoration: TextDecoration.underline),
                    lessStyle: const TextStyle(color: Colors.transparent),
                  ),
                ),
                Container(
                  color: const Color(0xff1D1D1D),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
                    child: Row(
                      children: [
                        const Text(
                          "WHEN: ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xffC8C8C8),
                          ),
                        ),
                        Text(
                          '$date',
                          style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xffC8C8C8),
                              height: 1.5,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: const Color(0xff252525),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
                    child: Row(
                      children: [
                        const Text(
                          "WHERE: ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xffC8C8C8),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '$venue',
                            style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xffC8C8C8),
                                height: 1.5,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: const Color(0xff313131),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
                    child: Row(
                      children: [
                        const Text(
                          "DEADLINE: ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xffC8C8C8),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '$duration',
                            style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xffC8C8C8),
                                height: 1.5,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width - 100,
                        height: 50,
                        child: const Center(
                          child: Text(
                            "REGISTER",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.6,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
