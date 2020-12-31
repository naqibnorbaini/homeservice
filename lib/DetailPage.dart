import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";
import 'package:homeservice/HomeCleaning.dart';

class DetailPage extends StatelessWidget {
  DocumentSnapshot detailDocument;
  DetailPage(this.detailDocument);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text(("" + detailDocument['title']),
                 style: TextStyle(
                color: Colors.white,)),
              expandedHeight: 350.0,
              flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    'https://images.pexels.com/photos/443356/pexels-photo-443356.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    fit: BoxFit.cover,
                  )
              ),
            )
          ],
        )
      ),
    );
  }
}
