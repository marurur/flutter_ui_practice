import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({Key? key}) : super(key: key);
  static const routeName = '/dialog';
  static const title = 'Alert Dialog Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Dialog Page')),
      body: Stack(
        children: [
          Center(
            child: Text(
              'Open Alert Dialog to tap the below button',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(60),
              child: ElevatedButton(
                onPressed: () => _showAlertDialog(context),
                child: Text('Open Alert Dialog'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text('Do you want to go to next page?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => _NextPage()),
                );
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}

class _NextPage extends StatelessWidget {
  const _NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(('Next Page'))),
    );
  }
}
