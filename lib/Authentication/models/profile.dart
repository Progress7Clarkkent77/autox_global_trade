import 'package:autox_global_trade/Authentication/providers/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({required Key key, required String username})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    final userModel = authProvider.userModel;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Center(child: Text('Profile')),
        // actions: [
        //   // IconButton(
        //   //   onPressed: () async {
        //   //     await authProvider.signOut();
        //   //   },
        //   //   icon: const Icon(Icons.logout),
        //   // ),
        // ],
      ),
      body: Center(
        child: userModel != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(userModel.photo),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Name: ${userModel.name}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // Text(
                  //   'Id: ${userModel.id}', // Assuming you have email in UserModel
                  //   style: const TextStyle(fontSize: 16),
                  // ),
                  const SizedBox(height: 10),
                  Text(
                    'Rank: ${userModel.name}', // Display the user's rank
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Points: ${userModel.name}', // Display the user's points
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  // Add other user profile information here
                ],
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
