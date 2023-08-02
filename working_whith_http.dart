import 'dart:convert';

import 'package:http/http.dart';

import 'models/todo_models.dart';
import 'models/user_model.dart';

void main() async {
  String baseUrl = 'https://64c9fb24b2980cec85c2ab56.mockapi.io/';
  Uri uriTodo = Uri.parse('$baseUrl/todos');
  Uri uriUsers = Uri.parse('$baseUrl/users');

  Response responseTodo = await get(uriTodo);
  Response responseUsers = await get(uriUsers);

  List<TodoModel> todos = List<Map<String, Object?>>.from(
    jsonDecode(responseTodo.body),
  ).map(TodoModel.fromJson).toList();

  List<User> users =
      List<Map<String, Object?>>.from(jsonDecode(responseUsers.body))
          .map(User.fromJson)
          .toList();

  print(users[0].name);
  print(todos[0].isDone);
}
