import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String imageUrl;
  const HomeCard({super.key,required this.imageUrl,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 220,
              width: 133,
              decoration: BoxDecoration(
                  image:  DecorationImage(
                      image: NetworkImage(
                         imageUrl,),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber),
            ),
          );
        },
      ),
    );
  }
}
