import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ma_base_app/models/user_model.dart';

class UserRepository {
  UserRepository._();

  static final UserRepository instance = UserRepository._();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<DocumentReference> createUser(BuildContext context, UserModel user) async {
    try {
      final docRef = await _db.collection('Users').add(user.toJson());
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User created')),
      );
      return docRef;
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to create user: $error')),
      );
      rethrow;
    }
  }
}
