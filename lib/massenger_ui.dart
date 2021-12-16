import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MasengerUi extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 00.0,
        title: Row(
          children:
          [
            CircleAvatar(
              radius: 20.0,
              backgroundImage:NetworkImage('https://fhras.net/wp-content/uploads/maxresdefault-1-218-1024x576.jpg'),

            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats' ,
              style: TextStyle(
                fontSize: 20.0 ,
                color: Colors.black ,
                fontWeight: FontWeight.bold ,

              ),
            ),
          ],
        ),
        actions:
        [
          IconButton(onPressed: (){}, icon:
          CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.camera_alt,
              size: 15.0,
              color: Colors.white,
            ),
          ),) ,
          IconButton(onPressed: (){}, icon:
          CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.edit,
              size: 15.0,
              color: Colors.white,
            ),
          ),),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children:
            [
              Container(
                padding: EdgeInsets.all(10.0),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[300] ,
                ) ,
                child: Row(
                  children:
                  [
                    Icon(
                      Icons.search,

                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.black,

                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: 110.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (Context , index) => buildStoryItem() ,
                  itemCount: 7,
                  separatorBuilder: (BuildContext context, int index) => SizedBox(
                      width: 15.0),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (Context , index) => buildShatItem(),
                itemCount: 15,
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                    height: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStoryItem() =>  Container(
    width: 60.0,
    child: Column(
      children:
      [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage:NetworkImage('https://s-media-cache-ak0.pinimg.com/originals/75/76/b4/7576b493bd6cd02d5b32f99ab444c342.jpg'),

            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0 ,
                end: 3.0 ,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          'Youssif Dorgam',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],

    ),
  ) ;
  Widget buildShatItem() =>  Row(
    children:
    [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children:
        [
          CircleAvatar(
            radius: 30.0,
            backgroundImage:NetworkImage('https://s-media-cache-ak0.pinimg.com/originals/75/76/b4/7576b493bd6cd02d5b32f99ab444c342.jpg'),

          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0 ,
              end: 3.0 ,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 10.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Text(
              'Youssif Dorgam' ,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold ,
                color: Colors.black ,
                fontSize: 20 ,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children:
              [
                Expanded(
                  child: Text(
                    'Hello me Youssif dorgam' ,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CircleAvatar(
                    radius: 5.0,
                    backgroundColor: Colors.blue,
                  ),
                ),
                Text(
                    '00:10'
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  ) ;

}