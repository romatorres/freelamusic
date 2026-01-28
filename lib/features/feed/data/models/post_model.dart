class PostModel {
  final String id;
  final String userName;
  final String userRole;
  final String userAvatar;
  final String content;
  final String? imageUrl;
  final int likes;
  final int comments;

  PostModel({
    required this.id,
    required this.userName,
    required this.userRole,
    required this.userAvatar,
    required this.content,
    required this.imageUrl,
    required this.likes,
    required this.comments,
  });
}
