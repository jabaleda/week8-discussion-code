/*
  Created by: Claizel Coubeili Cepe
  Date: updated April 26, 2023
  Description: Sample todo app with Firebase 
*/

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:week7_networking_discussion/api/firebase_todo_api.dart';
import '../models/todo_model.dart';

class TodoListProvider with ChangeNotifier {
  // connect firebase
  FirebaseTodoAPI firebaseService = FirebaseTodoAPI();

  // Hardcoded todo list
  // List<Todo> _todoList = [
  //   Todo(
  //     completed: true,
  //     userId: 1,
  //     title: "Grocery",
  //   ),
  //   Todo(
  //     completed: true,
  //     userId: 1,
  //     title: "Bills",
  //   ),
  //   Todo(
  //     completed: false,
  //     userId: 1,
  //     title: "Walk dog",
  //   ),
  // ];

  // db
  late Stream<QuerySnapshot> _todosStream;

  // constructor
  TodoListProvider() {
    fetchTodos();
  }

  // getter
  // List<Todo> get todo => _todoList;
  Stream<QuerySnapshot<Object?>> get todo => _todosStream;

  // fetching
  void fetchTodos() {
    _todosStream = firebaseService.getAllTodos();
    notifyListeners();
  }

  void addTodo(Todo item) async {
    // _todoList.add(item);             // hardcode

    // Format ToDo to a JSON/Map format
    String message = await firebaseService.addTodo(item.toJson(item)); // via database
    print(message);
    notifyListeners();
  }

  void editTodo(String id, String newTitle) async {
    // _todoList[index].title = newTitle;
    await firebaseService.editTodo(id, newTitle);
    notifyListeners();
  }

  void deleteTodo(String id) async {
    // for (int i = 0; i < _todoList.length; i++) {
    //   if (_todoList[i].title == title) {
    //     _todoList.remove(_todoList[i]);
    //   }
    // }

    await firebaseService.deleteTodo(id);
    notifyListeners();
  }

  void toggleStatus(int index, bool status) {
    // _todoList[index].completed = status;
    notifyListeners();
  }
}
