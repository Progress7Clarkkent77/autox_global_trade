import 'package:autox_global_trade/Authentication/dialog_auth.dart';
import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        showDialog(
          context: context,

          /// for call and show AuthDialog widget when click
          builder: (context) => const AuthDialog(),
        );
      },
      child: Container(
        height: 50,
        width: 240,
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.blueGrey,
              ),
            ),
            Expanded(
              child: Text(
                'Search Trading Plans Here...',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchResultsPage extends StatelessWidget {
  const SearchResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Results'),
      ),
      body: const Center(
        child: Text(
          'Display your search results here',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
