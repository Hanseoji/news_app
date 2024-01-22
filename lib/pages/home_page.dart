import 'package:flutter/material.dart';
import 'package:news_app_farhan/pages/article_page.dart';
import 'package:news_app_farhan/pages/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.deepPurple,
            child: const Center(
              child: Text(
                "News App",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ArticlePage(
                            category: 'Sports',
                          ),
                        ));
                  },
                  title: const Text("Sports"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ArticlePage(
                            category: 'business',
                          ),
                        ));
                  },
                  title: const Text("Entertainment"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        ));
                  },
                  title: const Text("Profile Developer"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
