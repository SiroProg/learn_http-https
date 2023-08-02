class TodoModel {
  String? id;
  String? title;
  String? description;

  TodoModel({
    this.id,
    this.title,
    this.description,
  });

  factory TodoModel.fromJson(Map<String, Object?> json) {
    return TodoModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );
  }

  @override
  String toString() =>
      'TodoModel(id: $id, title: $title, description: $description)';
}
