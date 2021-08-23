import 'package:facebook_ui_clone/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui_clone/models/models.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(12, 8, 12, 0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(imageUrl: currentUser.imageUrl),
                SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?',
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 0.5,
            ),
            Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton.icon(
                      icon: Icon(Icons.videocam, color: Colors.red),
                      label: Text('Live'),
                      onPressed: () {
                        print('live');
                      },
                      style: TextButton.styleFrom(primary: Colors.grey[800]),
                    ),
                    VerticalDivider(width: 8),
                    TextButton.icon(
                      icon: Icon(Icons.photo_library, color: Colors.green),
                      label: Text('Photo'),
                      onPressed: () {
                        print('Photo');
                      },
                    ),
                    VerticalDivider(
                      width: 8,
                    ),
                    TextButton.icon(
                      icon: Icon(Icons.video_call, color: Colors.purpleAccent),
                      label: Text('Room'),
                      onPressed: () {
                        print('live');
                      },
                    ),
                  ],
                )),
          ],
        ));
  }
}
