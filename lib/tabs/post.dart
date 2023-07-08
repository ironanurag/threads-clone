import 'package:flutter/material.dart';

class CreatePostPage extends StatefulWidget {
  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  TextEditingController _textEditingController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _checkButtonEnabled() {
    setState(() {
      _isButtonEnabled = _textEditingController.text.isNotEmpty;
    });
  }

  void _handlePostCreation() {
    // Handle post creation logic here
    String caption = _textEditingController.text;
    // Perform necessary actions, such as submitting the post to the server or saving it locally
    print('Creating post with caption: $caption');
    // Reset the text field after posting
    _textEditingController.clear();
    // Navigate back to the previous screen or perform other actions
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        automaticallyImplyLeading: false,
        title: Text('Create Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextField(
                controller: _textEditingController,
                maxLines: null,
                onChanged: (_) => _checkButtonEnabled(),
                decoration: InputDecoration(
                  hintText: "What's happening?",
                  border: InputBorder.none,
                ),
              ),
            ),

            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: _isButtonEnabled ? _handlePostCreation : null,
                child: Text('Post'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
