import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeItemLoadingCard extends StatelessWidget {
  const HomeItemLoadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          border: Border.all(),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                offset: const Offset(2, 2),
                blurRadius: 10.0
            ),
          ]
      ),
      child: Shimmer.fromColors(
          child: Container(
            color: Colors.grey.shade300,
          ),
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
      ),
    );
  }
}
