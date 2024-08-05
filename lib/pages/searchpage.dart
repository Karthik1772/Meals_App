import 'package:delivery_app/pages/searchlist.dart';
import 'package:delivery_app/pages/searchpages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  List<Searchlist> Search = availableSearchList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Search',
            style: GoogleFonts.varelaRound(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, '/homepage'),
          ),
        ),
        body: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                prefixIcon: Icon(CupertinoIcons.search),
                hintText: "Search for stores, items & more",
              ),
              onChanged: searchBook,
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: Search.length,
                itemBuilder: (context, index) {
                  final singleSearch = Search[index];
                  return ListTile(
                    leading: ClipOval(
                      child: Image.network(
                        singleSearch.Image,
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    title: Text(singleSearch.name),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookPage(book: singleSearch),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void searchBook(String query) {
    final suggestions = availableSearchList.where((book) {
      final SearchTitle = book.name.toLowerCase();
      final input = query.toLowerCase();
      return SearchTitle.contains(input);
    }).toList();
    setState(() => Search = suggestions);
  }
}
