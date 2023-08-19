import 'package:mvvm1/models/post_model.dart';
import 'package:mvvm1/repositories/post_repository.dart';

class PostsFake extends PostsRepository {
  @override
  Future<List<PostModel>> getAllPosts() {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }

}
