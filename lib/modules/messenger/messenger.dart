import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.00,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/258372581_408375140961046_1762484939968551365_n.jpg?_nc_cat=103&cb=99be929b-59f725be&ccb=1-7&_nc_sid=174925&_nc_ohc=PHleRm9GrDMAX88tChe&_nc_ht=scontent.fcai20-3.fna&oh=00_AfAThbFJpwY6Gv0loH1yBb7xk3vPE3ebTXdAUsNBYMAXDg&oe=647176CD",
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text("Chats",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      actions:
      [
        IconButton(
          onPressed: (){},
          icon: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.blue,
            child: Icon(Icons.camera_alt,
              color: Colors.white,
              size: 20.0,
              ),
            ),
        ),
        IconButton(
          onPressed: (){},
          icon: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.blue,
            child: Icon(Icons.edit,
              color: Colors.white,
              size: 20.0,
            ),
          ),
        ),
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Container(
                padding: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15.0
                  ),
                ),
                child: Row(
                  children:
                  [
                    Icon(Icons.search
                    ),
                    Text("Search"
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
             Container(
               height: 100.0,
               child: ListView.separated(itemBuilder: (context, index) => buildStoryItem(),
                   separatorBuilder:(context, index) => SizedBox(
                     width: 20.0,
                   ),
                   itemCount: 10,
                 scrollDirection: Axis.horizontal,
               ),
             ),
              SizedBox(
                height: 15.0,
              ),
              ListView.separated(itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 15.0,
                  ),
                  itemCount: 15,
                  shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() =>  Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(backgroundImage: NetworkImage("https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/258372581_408375140961046_1762484939968551365_n.jpg?_nc_cat=103&cb=99be929b-59f725be&ccb=1-7&_nc_sid=174925&_nc_ohc=PHleRm9GrDMAX88tChe&_nc_ht=scontent.fcai20-3.fna&oh=00_AfAThbFJpwY6Gv0loH1yBb7xk3vPE3ebTXdAUsNBYMAXDg&oe=647176CD",  ),
            radius: 30.0,
          ),
          CircleAvatar(radius: 8.5,
            backgroundColor: Colors.white,
          ),
          CircleAvatar(radius: 7.0,
            backgroundColor: Colors.green,
          ),
        ],
      ),
      SizedBox(
        width: 15.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ahmad Elasyed",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 14.0),
            ),
            SizedBox(
              height: 2.0,
            ),
            Row(
              children:
              [
                Expanded(
                  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non ligula est. Pellentesque mi justo, pharetra in aliquet finibus, molestie vel urna. Cras fringilla viverra enim, eu convallis lectus venenatis quis. Mauris dictum sapien a quam pharetra, at sodales urna lobortis.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0,
                  ),
                  child: Container(
                    width: 5.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text("02:45",
                ),
              ],
            ),
          ],
        ),
      ),
    ],

  );
  Widget buildStoryItem() => Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(backgroundImage: NetworkImage("https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/258372581_408375140961046_1762484939968551365_n.jpg?_nc_cat=103&cb=99be929b-59f725be&ccb=1-7&_nc_sid=174925&_nc_ohc=PHleRm9GrDMAX88tChe&_nc_ht=scontent.fcai20-3.fna&oh=00_AfAThbFJpwY6Gv0loH1yBb7xk3vPE3ebTXdAUsNBYMAXDg&oe=647176CD"
          ),
            radius: 30.0,
          ),
          CircleAvatar(radius: 8.5,
            backgroundColor: Colors.white,
          ),
          CircleAvatar(radius: 7.0,
            backgroundColor: Colors.green,
          ),
        ],
      ),
      Container(
        width: 60.0,
        child: Text(
          "Ahmed Elsayed Ahmed Elassal",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ],
  );

}
