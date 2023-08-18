import 'package:day18/widegts/most_popular.dart';
import 'package:day18/widegts/travel_blog.dart';
import 'package:flutter/material.dart';

class TravelBlogPage extends StatefulWidget {
  const TravelBlogPage({super.key});

  @override
  State<TravelBlogPage> createState() => _TravelBlogPageState();
}

class _TravelBlogPageState extends State<TravelBlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(actions: [
        Icon(Icons.menu),
      ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Travel Blog',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(flex: 2, child: TravelBlog()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Most Popular',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          Expanded(flex: 1, child: MostPopularPlaces()),
        ],
      ),
    );
  }
}
