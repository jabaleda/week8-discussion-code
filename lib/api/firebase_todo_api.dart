import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseTodoAPI {
  static final FirebaseFirestore db = FirebaseFirestore.instance;

  // add an item to To Do list. Call this in provider
  // Return val can be void
  Future<String> addTodo(Map<String, dynamic> todo) async {
    try {
      // access db asynchronously
      await db.collection("todos").add(todo);

      return "Successfully added!";
    } on FirebaseException catch (e) {
      return "Error in ${e.code}: ${e.message}";
    }
  }

  // fetch from db
  Stream<QuerySnapshot> getAllTodos() {
    return db.collection("todos").snapshots();
  }

  // Delete
  Future<String> deleteTodo(String id) async {
    try {
      // access db asynchronously
      await db.collection("todos").doc(id).delete();

      return "Successfully deleted!";
    } on FirebaseException catch (e) {
      return "Error in ${e.code}: ${e.message}";
    }
  }

  // Edit
  Future<String> editTodo(String id, String title) async {
    try {
      // access db asynchronously
      await db.collection("todos").doc(id).update({"title": title});

      return "Successfully edited!";
    } on FirebaseException catch (e) {
      return "Error in ${e.code}: ${e.message}";
    }
  }
}
