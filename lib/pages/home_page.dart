import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase/auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final User? user = Auth().currentUser;

  Future<void>signOut() async{
    await Auth().signOut();
  }
  Widget _title(){
    return const Text("Firebase Auth");
  }
  Widget _userUid(){
    return Text(user?.email ?? 'User email');
  }
  Widget _signOutButton(){
    return ElevatedButton(
        onPressed: signOut,
        child: const Text("Sign Out")
    );
  }
