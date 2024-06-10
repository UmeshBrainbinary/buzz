import 'package:flutter/material.dart';

class ModalScreen extends StatelessWidget {
  void _showModal(BuildContext context, String title) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text('This is the $title modal content.'),
          actions: [
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modal'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            _buildModalButton(context, 'Simple', Colors.pink),
            _buildModalButton(context, 'Scrolling Content', Colors.green),
            _buildModalButton(context, 'Tooltips And Popovers', Colors.blue),
            _buildModalButton(context, 'Open Model For Buzz', Colors.lightBlue),
          ],
        ),
      ),
    );
  }

  Widget _buildModalButton(BuildContext context, String title, Color color) {
    return Card(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: color
              ),
              onPressed: () => _showModal(context, title),
              child: Text('Launch Modal'),
            ),
          ],
        ),
      ),
    );
  }
}