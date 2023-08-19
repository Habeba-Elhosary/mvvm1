import 'package:mvvm1/models/post_model.dart';

abstract class PostsRepository {
  Future <List<PostModel>> getAllPosts ();
  Future <PostModel> getPostById (int id) ;
  }