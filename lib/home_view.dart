import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/yes.jpg'),
          ),
        ),
        title: Text(
          'My Task',
        ),
        elevation: 0,
        actions: const [
          Icon(Icons.sort),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(
                Icons.check_circle_outline,
                color: Colors.pink,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Plan a trip to Ukrain',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(37, 43, 103, 1),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'I wanna go to Ukrain to go study oil and gas so one day...just one day I will become the Energy Minister',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                width: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.pink,
                  ),
                  Text(
                    'Yesterday',
                    style: TextStyle(color: Colors.pink),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 40,
          ),
          onPressed: () {}),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(37, 43, 103, 0.4),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [Icon(Icons.check_circle_rounded)],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
