import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({Key? key}) : super(key: key);
  static const routeName = '/dialog';
  static const title = 'Alert Dialog Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert Dialog Page')),
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
                child: const Text('Open Alert Dialog'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: const Text('Do you want to go to next page?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.of(context).push<void>(
                  MaterialPageRoute(builder: (context) => const _NextPage()),
                );
              },
              child: const Text('Yes'),
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
      appBar: AppBar(title: const Text('Next Page')),
    );
  }
}
