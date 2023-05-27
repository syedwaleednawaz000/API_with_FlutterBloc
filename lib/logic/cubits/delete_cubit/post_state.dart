import 'package:blocapiyt/data/models/post_model.dart';

abstract class PostAddState {}

class PostAddLoadingState extends PostAddState {}

class PostAddLoadedState extends PostAddState {
  final List<PostModel> posts;
  PostAddLoadedState(this.posts);
}

class PostAddErrorState extends PostAddState {
  final String error;
  PostAddErrorState(this.error);
}