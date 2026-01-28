import '../datasources/mock_post_data.dart';
import '../models/post_model.dart';

class PostRepository {
  Future<List<PostModel>> getPosts() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return mockPost;
  }
}
