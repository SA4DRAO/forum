import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forum/dataprovider/data_provider.dart';
import 'package:forum/models/post_model.dart';
import 'package:forum/screens/profile.dart';
import 'package:forum/widgets/event.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final _data = ref.watch(postDataProvider);
    return Scaffold(
      backgroundColor: const Color(0xff111111),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        backgroundColor: const Color(0xff111111),
        title: Image.asset(
          'assets/images/forum.png',
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height * 0.026,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
            icon: Image.asset(
              'assets/images/Profileicon.png',
            ),
          ),
        ],
      ),
      body: _data.when(
        data: (_data) {
          List<PostsModel> postsList = _data.map((e) => e).toList();
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: PostBuilder(postsList: postsList),
              ),
            ],
          );
          // child: Column(
          //   children: [
          //     Container(
          //       padding: const EdgeInsets.only(left: 20, right: 20),
          //       child: const Center(
          //         child: Text(
          //           "Here's what's happening in campus!",
          //           style: TextStyle(
          //             fontFamily: 'Satoshi',
          //             color: Colors.white,
          //             fontSize: 32,
          //           ),
          //         ),
          //       ),
          //     ),
          //     PostBuilder(postsList: postsList),
          //   ],
          // ),
        },
        error: (err, s) => Text(err.toString()),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class PostBuilder extends StatelessWidget {
  const PostBuilder({
    Key? key,
    required this.postsList,
  }) : super(key: key);

  final List<PostsModel> postsList;
  @override
  Widget build(BuildContext context) {
    print(postsList.length);

    return ListView.builder(
      itemCount: postsList.length,
      itemBuilder: (_, index) {
        return EventCard();
      },
    );
  }
}
