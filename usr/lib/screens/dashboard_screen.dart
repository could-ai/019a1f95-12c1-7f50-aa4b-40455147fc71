import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final String review;

  const DashboardScreen({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Sentiment Analysis'),
              Tab(text: 'Consumer Insights'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Sentiment Analysis Tab
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Review:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(review),
                  const SizedBox(height: 24),
                  const Text('Analysis:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  const Text('This is where the sentiment analysis will be displayed.'),
                ],
              ),
            ),
            // Consumer Insights Tab
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text('Consumer insights will be shown here.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
