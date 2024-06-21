import 'package:provider_architecutre/core/enums/viewstate.dart';
import 'package:provider_architecutre/core/models/post.dart';
import 'package:provider_architecutre/core/services/api.dart';
import 'package:provider_architecutre/locator.dart';

import 'base_model.dart';

class HomeModel extends BaseModel {
  final Api _api = locator<Api>();

  late List<Post> posts;

  Future getPosts(int userId) async {
    setState(ViewState.busy);
    posts = await _api.getPostsForUser(userId);
    setState(ViewState.idle);
  }
}
