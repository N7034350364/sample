import 'package:flutter/material.dart';

var width;

class AlertDialogPage extends StatefulWidget {
  const AlertDialogPage({Key? key}) : super(key: key);

  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  Color boxColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green),
      body: Container(
        height: width * 1.9,
        width: width * 1,
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('close'),
                        ),
                      ],
                      title: Text("Flutter app"),
                      contentPadding: EdgeInsets.all(20),
                      content: Text("this is a dialog box"),
                    ),
                  );
                },
                child: Column(gi
                  children: [
                    SizedBox(
                      height: width * 0.5,
                    ),
                    Container(
                      color: Colors.blue,
                      width: width * 0.5,
                      height: width * 0.1,
                      child: Center(
                        child: Text(
                          "Click here",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}