import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flexible_grid_view/flexible_grid_view.dart';
import 'package:flutter/material.dart';

import '../models/recipe.model.dart';
import '../widgets/recipe_widget.dart';

class recentlyViewed extends StatefulWidget {
  const recentlyViewed({super.key});

  @override
  State<recentlyViewed> createState() => _recentlyViewedState();
}

class _recentlyViewedState extends State<recentlyViewed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:
      StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('recipes')
              .where("favourite_users_ids",
              arrayContains: FirebaseAuth.instance.currentUser!.uid)
              .snapshots(),
          builder: (context, snapshots) {
            if (snapshots.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              if (snapshots.hasError) {
                return const Text('ERROR WHEN GET DATA');
              } else {
                if (snapshots.hasData) {
                  List<Recipe> recipesList = snapshots.data?.docs
                      .map((e) => Recipe.fromJson(e.data(), e.id))
                      .toList() ??
                      [];
                  return FlexibleGridView(
                    children: recipesList
                        .map((e) => RecipeWidget(recipe: e))
                        .toList(),
                    axisCount: GridLayoutEnum.twoElementsInRow,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  );
                } else {
                  return const Text('No Data Found');
                }
              }
            }
          }),

    );
  }
}
