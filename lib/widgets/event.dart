import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return const EventCard();
  }
}

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: const Color(0xff111111),
            child: Column(
              children: [
                const Text(
                  "12TH DEC '22",
                  style: TextStyle(
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
                  width: MediaQuery.of(context).size.width,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(12, 8, 12, 0),
                    child: Text(
                      "Heading of the Event goes Here",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          height: 2,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(12, 4, 12, 8),
                    child: ReadMoreText(
                      "The description goes her rinting and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffC8C8C8),
                          height: 1.5,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left,
                      trimLines: 3,
                      trimMode: TrimMode.Line,
                      moreStyle:
                          TextStyle(decoration: TextDecoration.underline),
                      lessStyle: TextStyle(color: Colors.transparent),
                    ),
                  ),
                ),
                Container(
                  color: const Color(0xff1D1D1D),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
                    child: Row(
                      children: const [
                        Text(
                          "WHEN: ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xffC8C8C8),
                          ),
                        ),
                        Text(
                          "12th December, 2022",
                          style: TextStyle(
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
                      children: const [
                        Text(
                          "WHERE: ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xffC8C8C8),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Room 102, New Academic Building (NAB)",
                            style: TextStyle(
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
                      children: const [
                        Text(
                          "DEADLINE: ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xffC8C8C8),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "11th December, 2022",
                            style: TextStyle(
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
                      child: Container(
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
