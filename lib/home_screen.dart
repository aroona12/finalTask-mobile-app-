import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  static const String id ='home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:4,
        child: Scaffold(
      appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        centerTitle: false,
        title: Text('Whatsapp',style: TextStyle(color: Colors.white),),
        bottom: const TabBar(
            tabs: [

              Tab(
                child:Icon(Icons.camera_alt,color: Colors.white,),
              ),
              Tab(
                child:Text('chat',style: TextStyle(color: Colors.white),),
              ),
              Tab(
                child: Text('status',style: TextStyle(color: Colors.white),),
              ),
              Tab(
                child:Text('call',style: TextStyle(color: Colors.white),),
              ),
        ]),
        actions: [
        const  Icon(Icons.search),
          SizedBox(width: 10,),
          PopupMenuButton(
            icon:Icon(Icons.more_vert_outlined),
              itemBuilder:(context,) => [
                PopupMenuItem(
        value: '3',
          child: Text('New Group'),
                )]
    ),
          SizedBox(width: 10,)
        ],
      ),
          body:TabBarView(
            children: [
              Text('camera'),
              ListView.builder(
                  itemCount: 9,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://blogglez.com/wp-content/uploads/2018/12/1200-81254347-woman-working-in-office-business-woman-1140x794.jpg'),
                      ),
                      title: Text('aroona bibi'),
                      subtitle: Text('mobile app'),
                      trailing: Text('10:00 AM')
                    );
                  }),
              ListView.builder(
                  itemCount: 9,
                  itemBuilder: (context, index){
                    if(index==0){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('New updates'),
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.green,
                                      width: 3,
                                    )
                                ),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage('https://blogglez.com/wp-content/uploads/2018/12/1200-81254347-woman-working-in-office-business-woman-1140x794.jpg'),
                                ),
                              ),
                              title: Text('aroona bibi'),
                              subtitle: Text('20m ago'),
                            ),
                          ],
                        ),
                      );
                    }
                    else{
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 3,
                              )
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://blogglez.com/wp-content/uploads/2018/12/1200-81254347-woman-working-in-office-business-woman-1140x794.jpg'),
                          ),
                        ),
                        title: Text('aroona bibi'),
                        subtitle: Text('20m ago'),
                      );
                    }
                  }
                  ),
              ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index){
                    return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://blogglez.com/wp-content/uploads/2018/12/1200-81254347-woman-working-in-office-business-woman-1140x794.jpg'),
                        ),
                        title: Text('aroona bibi'),
                        subtitle:Text(index/2 == 0 ? 'you missed audio call' : 'you have missed video call'),
                      trailing: Icon(index/2 == 0 ? Icons.phone : Icons.video_call),
                    );
                  }),



            ],
          ),
    )
    );
  }
}
