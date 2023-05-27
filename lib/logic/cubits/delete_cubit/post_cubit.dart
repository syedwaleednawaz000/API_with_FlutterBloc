import 'package:blocapiyt/data/models/post_model.dart';
import 'package:blocapiyt/data/repositories/post_repository.dart';
import 'package:blocapiyt/logic/cubits/delete_cubit/post_state.dart';
import 'package:blocapiyt/logic/cubits/post_cubit/post_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCubit extends Cubit<PostAddState> {
  PostCubit() : super( PostAddLoadingState() ) {
    // fetchPosts();
  }

  PostRepository postRepository = PostRepository();

  void postData({required Map<String , dynamic> map }) async {
    try {
      final response =  await postRepository.postData(map:  map);
      // emit(PostAddLoadedState(posts));
    }
    on DioError catch(ex) {
      if(ex.type == DioErrorType.other) {
        emit( PostAddErrorState("Can't fetch posts, please check your internet connection!") );
      }
      else {
        emit( PostAddErrorState(ex.type.toString()) );
      }
    }
  }
}