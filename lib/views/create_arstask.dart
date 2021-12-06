import 'package:arstask/utils.dart';
import 'package:flutter/material.dart';

class Createarstask extends StatefulWidget {
  const Createarstask({Key? key}) : super(key: key);

  @override
  State<Createarstask> createState() => _CreatearstaskState();
}

class _CreatearstaskState extends State<Createarstask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Create new ArsTask',
      )),
      body: Form(
          child: ListView(padding: const EdgeInsets.all(16), children: [
        TextFormField(
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            label: Text('Title'),
            hintText: 'Please input your Title here',
            floatingLabelBehavior: FloatingLabelBehavior.never,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: customBlue),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          keyboardType: TextInputType.multiline,
          textCapitalization: TextCapitalization.sentences,
          maxLines: 5,
          decoration: InputDecoration(
              label: Text(
                'Description',
              ),
              hintText: 'Pleasentera descriptionhere',
              floatingLabelBehavior: FloatingLabelBehavior.never,
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: customBlue))),
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                onTap: () {
                  showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(
                        const Duration(days: 365),
                      ));
                },
                keyboardType: TextInputType.datetime,
                textCapitalization: TextCapitalization.sentences,
                maxLines: 1,
                decoration: InputDecoration(
                    label: Text('date'),
                    hintText: 'please select a date',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: customBlue),
                    )),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: TextFormField(
                onTap: () {
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                },
                decoration: InputDecoration(
                  label: Text('Time'),
                  hintText: 'please select a date',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: customBlue),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 35,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Create ArsTask',
            style: TextStyle(color: Colors.white),
          ),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(16),
            backgroundColor: customBlue,
          ),
        )
      ])),
    );
  }
}
