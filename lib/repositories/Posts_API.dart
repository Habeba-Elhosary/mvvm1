import 'package:dio/dio.dart';
import 'package:mvvm1/models/post_model.dart';
import 'package:mvvm1/repositories/post_repository.dart';

class PostsApi extends PostsRepository {
  @override
  Future<List<PostModel>> getAllPosts() async {
    List<PostModel> posts = [] ;
    try{
      var response = await Dio().get('https://jsonplaceholder.typicode.com/posts') ;
      var list = response.data as List;
      posts = list.map((post) => PostModel.fromJson(post)).toList();
      print(response.data);
    }catch(e){
      print(e);
    }
    return posts ;
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }
  
}