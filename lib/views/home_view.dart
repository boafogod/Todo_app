import 'package:arstask/utils.dart';
import 'package:arstask/views/create_arstask.dart';
import 'package:flutter/material.dart';
import 'package:arstask/views/arstask_tile_view';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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
      body: ListView.separated(
          itemBuilder: (context, index) {
            return const ArsTaskTileView();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 15,
            );
          },
          itemCount: 5),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 40,
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return const Createarstask();
              },
            ));
          }),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(37, 43, 103, 0.4),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                onTap: () {
                  showBarModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return CompletedArsTaskWidget();
                      });
                },
                child: Row(children: [
                  Icon(Icons.check_circle_rounded, color: customBlue),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Completed',
                        style: TextStyle(
                            color: customBlue, fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: customBlue,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text('24', style: TextStyle(color: customBlue)),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CompletedArsTaskWidget extends StatelessWidget {
  const CompletedArsTaskWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.check_circle_outline),
      title: Text(
        'Plan a trip to Jamaica',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: customBlue,
        ),
      ),
      subtitle: Text(
        'i wanna be a businessman so i can travel around the world with my family',
        style: TextStyle(
          color: customBlue,
          fontSize: 16,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.notifications,
            color: customBlue,
          ),
          Text('Yesterday',
              style: TextStyle(
                color: customBlue,
                fontSize: 16,
              ))
        ],
      ),
    ));
  }
}
