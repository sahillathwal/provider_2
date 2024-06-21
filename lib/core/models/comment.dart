class Comment {
  int? postId;
  int? id;
  String name;
  String? email;
  String body;

  // Constructor without required keyword for parameters
  Comment({
    this.postId,
    this.id,
    required this.name,
    this.email,
    required this.body,
  });

  // fromJson constructor to initialize all fields directly
  Comment.fromJson(Map<String, dynamic> json)
      : postId = json['postId'],
        id = json['id'],
        name = json['name'],
        email = json['email'],
        body = json['body'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['postId'] = postId;
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['body'] = body;
    return data;
  }
}
