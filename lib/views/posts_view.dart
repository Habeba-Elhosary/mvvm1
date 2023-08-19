import 'package:flutter/material.dart';
import 'package:mvvm1/repositories/Posts_API.dart';
import '../view_models/post_view_model.dart';
import '../view_models/posts_view_model.dart';

class PostsView extends StatefulWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  //create instants from home_view_model
  //Dependency injection
  var data = PostsViewModel(postsRepository: PostsApi());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text(data.title) ,
        ),
        body:Center(
          child:FutureBuilder<List<PostViewModel>>(
            future: data.fetchAllPosts(),
            builder:(context, snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting){
                return const CircularProgressIndicator();
              }else{
                var x = snapshot.data ;
                return ListView.builder(
                    itemCount: x?.length,
                    itemBuilder: (context, index) => ListTile(title: Text(x?[index].title),),
                );
              }
            },
          ),
        )
    );
  }
}
