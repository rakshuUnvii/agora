import 'package:flutter/material.dart';
import 'video_call_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final channelController = TextEditingController();
    final tokenController = TextEditingController();
    final appIdController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Agora Video Call"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton.icon(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VideoCallScreen(
                    name: "test",
                    channelName: "test",
                    token:"007eJxTYLgbVCZ87ChLRerPlcE5ItqLbrJG6LrkiDtpCmlL/Pl1rkeBwdwk2Sgt1SDZwsTc2MTUJNUyJSXV0tTEJDUpydI4zSh1oemetIZARobonvPMjAwQCOKzMJSkFpcwMAAAuv4eAg==",
                    appId: "74c2fe0c8473454e9dde9544ebb93f2e",
                  ),
                ),
              );
            }
          },
          icon: const Icon(Icons.add),
          label: const Text("Submit"),
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(350, 50),
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  "https://blogimages.softwaresuggest.com/blog/wp-content/uploads/2023/05/23160036/15-Best-Free-International-Calling-Apps-in-2023.jpg",
                ),
                const SizedBox(height: 40),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors
                              .grey, 
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.orange,
                        width: 2.0,
                      ))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: channelController,
                  decoration: const InputDecoration(
                      labelText: 'Channel name',
                      labelStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.orange,
                        width: 2.0,
                      ))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a channel name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: tokenController,
                  decoration: const InputDecoration(
                      labelText: 'Agora temporary token',
                      labelStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.orange,
                        width: 2.0,
                      ))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the Agora temporary token';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: appIdController,
                  decoration: const InputDecoration(
                      labelText: 'App Id',
                      labelStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.orange,
                        width: 2.0,
                      ))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the App Id';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
