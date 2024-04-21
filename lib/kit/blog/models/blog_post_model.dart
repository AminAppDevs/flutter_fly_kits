class BlogPostModel {
  final int id;
  final String image;
  final bool isMarked;
  final String title;
  final String createdAt;
  final String category;
  final String authorName;
  final String authorurl;
  final String authorimage;
  final String content;

  BlogPostModel({
    required this.image,
    required this.isMarked,
    required this.id,
    required this.title,
    required this.createdAt,
    required this.category,
    required this.authorName,
    required this.authorurl,
    required this.authorimage,
    required this.content,
  });
}
