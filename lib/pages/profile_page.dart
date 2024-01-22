import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
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
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/farhan.jpg"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Muhammad Farhan",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //npm
                ListTile(
                  leading: Icon(Icons.confirmation_number),
                  title: Text("2110020058"),
                ),
                //kelas
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text(
                      "Universitas Islam Kalimantan Muhammad Arsyad Al Banjari"),
                ),

                ListTile(
                  leading: Icon(Icons.email),
                  title: Text("hans.business08@gmail.com"),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("+62 896-2039-6901"),
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text(
                      "Jl.Sungai andai Komp.andai jaya persada Blok E/43, Indonesia "),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
