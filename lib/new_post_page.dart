import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class NewPostPage extends StatefulWidget {
  @override
  _NewPostPageState createState() => _NewPostPageState();
}

class _NewPostPageState extends State<NewPostPage> {
  final textEditingController = TextEditingController();

  File _image;
  final picker = ImagePicker();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: () => _getImage(),
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(icon: Icon(Icons.send), onPressed: () {}),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _image == null
              ? Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Text('No Image', textAlign: TextAlign.center),
                )
              : Image.file(_image),
          TextField(
            decoration: InputDecoration(hintText: 'Input Content'),
            controller: textEditingController,
          )
        ],
      ),
    );
  }

  Future<void> _getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }
}
