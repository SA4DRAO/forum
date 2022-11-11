import 'package:forum/models/post_model.dart';
import 'package:forum/services/services.dart';
import 'package:riverpod/riverpod.dart';

final postDataProvider = FutureProvider<List<PostsModel>>(
  (ref) async {
    return ref.watch(postProvider).getPosts();
  },
);
