import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:games_list/UI/home/domain/home_entity.dart';

class HomeItemCard extends StatelessWidget {
  const HomeItemCard(this.game);
  final HomeGameEntity game;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){ print("tapped $game"); },
      child: Container(
        margin: EdgeInsets.all(20),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 64.0,
              child: Text(
                game.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                maxLines: 1,
              ),
            ),
            AspectRatio(
                aspectRatio: 16.0/9.0,
                child: Image.network(game.backgroundImage.toString()),
            ),
            SizedBox(
              height: 50.0,
              child: Text(
                game.rating.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.normal
                ),
                maxLines: 1,
              ),
            ),
            SizedBox(
              height: 50.0,
              child: Text(
                game.genres?.first.name ?? "N/A",
                style: TextStyle(
                    fontWeight: FontWeight.normal
                ),
                maxLines: 1,
              ),
            ),
          ],
        ),
      )
    );
  }
}
