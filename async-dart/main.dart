

// From .env file get the API endpoint and fetch data chosen from the cli
// Posts , Comments, Users

import 'dart:io';
import 'dart:convert';
import 'dart: async';
import 'package:http/http.dart' as http;

//get the API endpoint from .env file
var endpoint = Platform.environment['API_ENDPOINT'];

//get the data from the API
Future<List> getData(String endpoint, String dataType) async {
  var response = await http.get(Uri.parse('$endpoint/$dataType'));
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to load data');
  }
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(this.userId, this.id, this.title, this.body);
}

class Comment {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  Comment(this.postId, this.id, this.name, this.email, this.body);
}

class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String address;
  final String phone;
  final String website;

  User(this.id, this.name, this.username, this.email, this.address, this.phone, this.website);
}

void main() async {
  var posts = await getData(endpoint, 'posts');
  var comments = await getData(endpoint, 'comments');
  var users = await getData(endpoint, 'users');
  print(posts);
  print(comments);
  print(users);
}