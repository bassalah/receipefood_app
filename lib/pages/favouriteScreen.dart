import 'package:flutter/material.dart';

class favouriteScreen extends StatefulWidget {
  const favouriteScreen({super.key});

  @override
  State<favouriteScreen> createState() => _favouriteScreenState();
}

 class _favouriteScreenState extends State<favouriteScreen> {


  List<String> searchResults = [];

  get data => null;

  void onQueryChanged(String query) {
    setState(() {
      searchResults = data
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });

    String query = '';

    void onQueryChanged(String newQuery) {
      setState(() {
        query = newQuery;
      });
    }
    @override
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: Text('Favourites '),
          ),
          body:

          Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: TextField(
                    onChanged: onQueryChanged,
                    decoration: InputDecoration(


                      border: OutlineInputBorder(),
                      prefixIcon:
                      Icon(Icons.search),
                      labelText: 'Search',


                    ),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                      itemCount: searchResults.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(searchResults[index]),
                        );
                      },
                    ))
              ])
      );
    }
  }



