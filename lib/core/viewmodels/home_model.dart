import 'package:provider_architecutre/core/enums/viewstate.dart';
import 'package:provider_architecutre/core/models/post.dart';
import 'package:provider_architecutre/core/services/posts_service.dart';
import 'package:provider_architecutre/locator.dart';

import 'base_model.dart';

class HomeModel extends BaseModel {
  final PostsService _postsService = locator<PostsService>();

  List<Post> get posts => _postsService.posts;

  Future getPosts(int userId) async {
    setState(ViewState.busy);
    await _postsService.getPostsForUser(userId);
    setState(ViewState.idle);
  }
}
