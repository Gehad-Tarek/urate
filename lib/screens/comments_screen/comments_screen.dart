import 'package:flutter/material.dart';
import 'package:urate/shared_widgets/arabic_comment.dart';
import 'package:urate/shared_widgets/english_comment.dart';
import '../../constants/constants.dart';

class CommentsScreen extends StatefulWidget {
  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentsScreen> {
  final TextEditingController _commentController = TextEditingController();
  bool isTextFieldEmpty = true;
  List<String> comments = [];

  @override
  void initState() {
    super.initState();

    // Listen to changes in the TextField
    _commentController.addListener(() {
      setState(() {
        isTextFieldEmpty = _commentController.text.isEmpty;
      });
    });
  }

  void _addComment() {
    setState(() {
      comments.add(_commentController.text);
      _commentController.clear();
    });
  }

  void _executeFunction() {
    if (!isTextFieldEmpty) {
      _addComment();
      print('Text field is not empty. Executing function.');
    }
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Comments",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 2.0)),
        backgroundColor: Constants.kPurpleColor,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemCount: comments.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title:
                      EnglishComment(comments[index]),
                      // ArabicComment(comments[index]),
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(
                  left: width * 0.04,
                  right: width * 0.04,
                  top: height * 0.03,
                  bottom: 0),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      cursorColor: Constants.kPurpleColor,
                      controller: _commentController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide:
                                BorderSide(color: Constants.kPurpleColor)),
                        labelText: 'Add a Comment',
                        labelStyle: TextStyle(
                            color: Constants.kMaintGreenColor,
                            // fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send, color: Constants.kPurpleColor),
                    onPressed: _executeFunction,
                    // onPressed: _addComment,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
