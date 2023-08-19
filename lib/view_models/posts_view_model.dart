import 'package:mvvm1/models/post_model.dart';
import 'package:mvvm1/repositories/post_repository.dart';
import 'package:mvvm1/view_models/post_view_model.dart';

class PostsViewModel{
  //this will provide all data the view needs
  String title = 'All Posts';
  PostsRepository? postsRepository ;
  PostsViewModel({this.postsRepository});

  Future<List<PostViewModel>>fetchAllPosts() async {
    List<PostModel> list = await postsRepository!.getAllPosts();
    return list.map((post) => PostViewModel(postModel: post)).toList();
  }
}