import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MealLoadingGridWidget extends StatelessWidget {
  const MealLoadingGridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10),
          height: 200,
          child: Column(
            children: [
              Expanded(
                child: Shimmer.fromColors(
                  baseColor: Colors.grey[500]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        );
      },
    );
  }
}
